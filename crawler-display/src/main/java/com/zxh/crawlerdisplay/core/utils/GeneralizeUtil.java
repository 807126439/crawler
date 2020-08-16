package com.zxh.crawlerdisplay.core.utils;

import java.util.ArrayList;
import java.util.List;

import com.zxh.crawlerdisplay.core.common.bean.GeneralizeParam;

public class GeneralizeUtil {

	public static String generalizeString(String str, GeneralizeParam param) {

		List<String> names = new ArrayList<String>();

		boolean sign = false;
		List<Character> chars = new ArrayList<Character>();
		for (Character c : str.toCharArray()) {
			if (c.equals('$')) {
				sign = true;
			}

			if (sign) {
				chars.add(c);
			}

			if (c.equals('}')) {
				StringBuilder temp = new StringBuilder();
				for (Character c2 : chars) {
					temp.append(c2);
				}
				names.add(temp.toString());
				chars.clear();
				sign = false;
				temp = null;
			}
		}

		if (!names.isEmpty()) {
			List<String[]> attrNames = new ArrayList<String[]>();
			for (String name : names) {
				String field = name.substring(2, name.length() - 1);
				String val = ReflectUtil.getValueByGetMethod(param, field);
				attrNames.add(new String[] { name, val });

			}

			for (String[] sa : attrNames) {
				if (sa[0] != null && sa[1] != null) {
					str = str.replace(sa[0], sa[1]);
				}

			}
		}

		return str;
	}

}
