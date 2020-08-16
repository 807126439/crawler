package com.zxh.crawlerpersistent.core.common.utils;

import com.zxh.crawlerpersistent.core.annotations.DbField;
import org.apache.commons.lang.StringUtils;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.math.BigDecimal;
import java.util.*;
import java.util.Map.Entry;

public class ReflectUtil {

    /**
     * 获取多个类信息
     *
     * @return
     * @author cm
     */
    public static List<FieldInfo> getFieldInfos(Class<?>[] clazzes, List<String> blackList) {
        List<FieldInfo> list = new ArrayList<FieldInfo>();
        for (Class<?> clazz : clazzes) {
            list.addAll(ReflectUtil.getCurrentFieldInfos(clazz, blackList));
        }
        return list;
    }

    /**
     * 获取类所有信息
     *
     * @param clazz
     * @return
     * @author cm
     */
    public static List<FieldInfo> getFieldInfos(Class<?> clazz, List<String> blackList) {
        return ReflectUtil.getFieldInfos(new Class<?>[]{clazz.getSuperclass(), clazz}, blackList);
    }

    /**
     * 获取当前类信息
     *
     * @param clazz
     * @return
     * @author cm
     */
    public static List<FieldInfo> getCurrentFieldInfos(Class<?> clazz, List<String> blackList) {
        List<FieldInfo> list = new ArrayList<FieldInfo>();
        Field[] fields = clazz.getDeclaredFields();
        for (Field field : fields) {
            if (blackList.contains(field.getName())) {
                continue;
            }
            if (!field.toString().contains("static") && field.toString().contains("private")) {
                try {
                    PropertyDescriptor pd = new PropertyDescriptor(field.getName(), clazz);
                    Method method = pd.getReadMethod();
                    DbField dbField = method.getAnnotation(DbField.class);
                    if (dbField != null) {
                        FieldInfo model = new FieldInfo(dbField.text(), field.getName(), field.getType().getName());
                        list.add(model);
                    }
                } catch (IntrospectionException e) {
                    e.printStackTrace();
                }
            }
        }
        return list;
    }

    /**
     * 获取属性
     *
     * @param clazz
     * @return
     * @author cm
     */
    public static List<String> getFields(Class<?> clazz) {
        List<String> list = new ArrayList<String>();
        Field[] fields = clazz.getDeclaredFields();
        for (Field field : fields) {
            if (!field.toString().contains("static") && field.toString().contains("private")) {
                list.add(field.getName());
            }
        }
        return list;
    }

    /**
     * 获取属性对应值
     *
     * @param obj
     * @param fields
     * @return
     * @author cm
     */
    public static Map<String, String> getValuesByFields(Object obj, String[] fields) {
        Map<String, String> map = new HashMap<String, String>();
        PropertyDescriptor pd;
        for (String field : fields) {
            try {
                pd = new PropertyDescriptor(field, obj.getClass());
                Method method = pd.getReadMethod();
                Object val = method.invoke(obj);
                String returnType = method.getReturnType().getName();
                if (returnType.contains("java.util.Date")) {
                    if (val != null) {
                        map.put(field, DateUtil.date2Str((Date) val));
                    } else {
                        map.put(field, "");
                    }
                } else {
                    map.put(field, val == null ? "" : val.toString());
                }
            } catch (IntrospectionException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
        }
        return map;
    }

    /**
     * 获取属性对应中文名text
     *
     * @param clazz
     * @param fields
     * @return
     * @author cm
     */
    public static Map<String, String> getFieldTextsByFields(Class<?> clazz, String[] fields) {
        Map<String, String> map = new HashMap<String, String>();
        PropertyDescriptor pd;
        for (String field : fields) {
            try {
                pd = new PropertyDescriptor(field, clazz);
                Method method = pd.getReadMethod();
                DbField dbField = method.getAnnotation(DbField.class);
                if (dbField != null) {
                    map.put(field, dbField.text());
                }
            } catch (IntrospectionException e) {
                e.printStackTrace();
            }
        }
        return map;
    }

    /**
     * 通过java反射获取类的成员变量值
     * <p>
     * 类
     *
     * @param fieldName 变量名
     * @return
     * @author zjr
     */
    public static String getClassFiledValue(Object obj, String fieldName) {

        try {
            Field filed = obj.getClass().getDeclaredField(fieldName);
            // filed.setAccessible(true);

            return filed.get(obj).toString();

        } catch (Exception e) {

            e.printStackTrace();

            return "";
        }

    }

    public static String getValueByGetMethod(Object obj, String fieldName) {

        try {
            PropertyDescriptor pd = new PropertyDescriptor(fieldName, obj.getClass());
            Method method = pd.getReadMethod();
            String returnType = method.getReturnType().getName();

            Object val = method.invoke(obj);
            if (returnType.contains("java.util.Date")) {
                if (val != null) {
                    return DateUtil.dateToStrByPattern((Date) val, "yyyy-MM-dd HH:mm");

                } else {
                    return "";
                }

            } else {
                return val == null ? "" : val.toString();
            }

        } catch (Exception e) {

            e.printStackTrace();

            return "";
        }

    }

    /**
     * 根据成员变量名得到其Get方法，再返回Get方法的注解的数据库字段名
     *
     * @param clazz
     * @param fieldName
     * @return
     */
    public static String getFiledValueByAnnotation(Class<?> clazz, String fieldName) {

        try {
            PropertyDescriptor pd = new PropertyDescriptor(fieldName, clazz);
            Method method = pd.getReadMethod();
            DbField field = method.getAnnotation(DbField.class);
            if (field != null) {
                return field.name();
            }/*
             * else{ PropertyDescriptor spd = new PropertyDescriptor(fieldName,
             * clazz.getSuperclass());
             *
             * Method method2 = spd.getReadMethod(); DbField field2 =
             * method2.getAnnotation(DbField.class); if(field2!=null){ return
             * field2.name(); } }
             */

            return null;

        } catch (Exception e) {
            // e.printStackTrace();

            return "";
        }

    }

    /**
     * 对象赋值
     *
     * @param obj 对象
     * @param map 值map
     */
    public static void setValueByMap(Object obj, Map<String, String> map) {

        Iterator<Entry<String, String>> iterator = map.entrySet().iterator();
        while (iterator.hasNext()) {
            try {
                Entry<String, String> entry = iterator.next();
                PropertyDescriptor pd = new PropertyDescriptor(entry.getKey(), obj.getClass());
                Method method = pd.getWriteMethod();
                // System.out.println(method.getGenericParameterTypes()[0].toString());
                String paramType = method.getGenericParameterTypes()[0].toString();
                paramType = paramType.substring(6, paramType.length());

                String source = entry.getValue();
                Object val = null;
                switch (paramType) {
                    case "java.lang.Boolean":
                        val = Boolean.parseBoolean(source);
                        break;
                    case "java.lang.Short":
                        val = Short.parseShort(source);
                        break;
                    case "java.lang.Integer":
                        val = Integer.parseInt(source);
                        break;
                    case "java.lang.Long":
                        val = Long.parseLong(source);
                        break;
                    case "java.lang.Float":
                        val = Float.parseFloat(source);
                        break;
                    case "java.lang.Double":
                        val = Double.parseDouble(source);
                        break;
                    case "java.math.BigDecimal":
                        val = new BigDecimal(source);
                        break;
                    case "java.lang.String":
                        val = entry.getValue();
                        break;
                    case "java.util.Date":

                        val = DateUtil.autoConvertDate(entry.getValue());
                        break;

                    default:
                        val = entry.getValue();
                        break;
                }

                method.invoke(obj, val);

            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        System.out.println(obj.toString());

    }

    /**
     * 获取两个对象属性值不同的属性信息
     *
     * @param obj       旧对象
     * @param obj2      新对象
     * @param blackList 属性名黑名单
     * @return
     */
    public static List<DiffItem> getDifferentField(Object obj, Object obj2, List<String> blackList) {

        Field[] afields = obj.getClass().getDeclaredFields();

        List<DiffItem> result = new ArrayList<DiffItem>();
        for (int i = 0; i < afields.length; i++) {
            Field field = afields[i];

            if (!Modifier.isStatic(field.getModifiers())) {// 判断是否静态
                field.setAccessible(true);

                // 黑名单在列的跳过
                if (blackList != null && blackList.contains(field.getName())) {
                    continue;
                }

                try {
                    Field bfield = obj2.getClass().getDeclaredField(field.getName());
                    bfield.setAccessible(true);

                    Object a = field.get(obj);
                    Object b = bfield.get(obj2);
                    String preVal = null;
                    String aftVal = null;

                    if (a != null) {
                        if ("java.util.Date".equals(field.getType().getName())) {
                            preVal = DateUtil.dateToStr((Date) a);
                        } else {
                            preVal = String.valueOf(a);
                        }

                    }

                    if (b != null) {
                        if ("java.util.Date".equals(field.getType().getName())) {
                            aftVal = DateUtil.dateToStr((Date) b);
                        } else {
                            aftVal = String.valueOf(b);
                        }

                    }

                    if ((a == null && b == null) || (StringUtils.isBlank(preVal) && StringUtils.isBlank(aftVal))
                            || (preVal == null && StringUtils.isBlank(aftVal)) || (StringUtils.isBlank(preVal) && aftVal == null)) {
                        continue;
                    }

                    if ((a == null && b != null) || (a != null && b == null) || !a.equals(b)) {
                        PropertyDescriptor pd = new PropertyDescriptor(field.getName(), obj.getClass());
                        Method method = pd.getReadMethod();
                        DbField at = method.getAnnotation(DbField.class);
                        String text = null;
                        if (at != null) {
                            text = at.text();
                        }

                        result.add(new DiffItem(text, field.getName(), field.getType().getName(), preVal, aftVal));
                    }

                } catch (Exception e) {
                    // e.printStackTrace();
                    continue;
                }

            }

        }
        System.out.println(result.toString());
        return result;
    }

    public static class FieldInfo {

        private final String text; // 页面属性名称
        private final String name; // 字段名
        private final String type; // 字段类型

        public FieldInfo(String text, String name, String type) {
            super();
            this.text = text;
            this.name = name;
            this.type = type;
        }

        public String getText() {
            return text;
        }

        public String getName() {
            return name;
        }

        public String getType() {
            return type;
        }

        @Override
        public String toString() {
            return "ClassInfo [text=" + text + ", name=" + name + ", type=" + type + "]";
        }
    }

    public static class DiffItem {

        private final String text; // 页面属性名称
        private final String name; // 字段名
        private final String type; // 字段类型
        private final String preVal; // 修改前的值
        private final String aftVal; // 修改后的值

        public DiffItem(String text, String name, String type, String preVal, String aftVal) {
            super();
            this.text = text;
            this.name = name;
            this.type = type;
            this.preVal = preVal;
            this.aftVal = aftVal;
        }

        public String getText() {
            return text;
        }

        public String getName() {
            return name;
        }

        public String getType() {
            return type;
        }

        public String getPreVal() {
            return preVal;
        }

        public String getAftVal() {
            return aftVal;
        }

        @Override
        public String toString() {
            return "DiffItem [text=" + text + ", name=" + name + ", type=" + type + ", preVal=" + preVal + ", aftVal=" + aftVal + "]";
        }

    }

}
