package com.zxh.crawlerdisplay.core.utils;

import java.util.Collection;

/**
 * @author cm
 */
public class TestUtil {

    // collection
    public static void printTips(Collection<?> collection) {
	System.out.println("***************************");
	if (collection == null || collection.size() < 1) {
	    System.out.println(collection);
	    return;
	}
	for (Object item : collection) {
	    System.out.println(item.toString());
	}
	System.out.println(collection.size());
	System.out.println("***************************");
    }

    // array
    public static void printTips(Object[] array) {
	System.out.println("***************************");
	if (array == null || array.length < 1) {
	    System.out.println(array);
	    return;
	}
	for (Object item : array) {
	    System.out.println(item.toString());
	}
	System.out.println(array.length);
	System.out.println("***************************");
    }

    // object
    public static void printTips(Object obj) {
	System.out.println("***************************");
	System.out.println(obj);
	System.out.println("***************************");
    }

    // null
    public static void printTips() {
	System.out.println("***************************");
	System.out
		.println(new Exception().getStackTrace()[1].getClassName() + "." + new Exception().getStackTrace()[1].getMethodName() + " ===> " + new Exception().getStackTrace()[0].getMethodName());
	System.out.println("***************************");
    }

}
