package com.zxh.crawlerdisplay.core.common.dto.converter;

import java.util.Date;

import org.dozer.CustomConverter;

import com.zxh.crawlerdisplay.core.utils.DateUtil;

public class DateStringConverter implements CustomConverter {

	@Override
	public Object convert(Object destinationFieldValue, Object sourceFieldValue, Class<?> destinationClass, Class<?> sourceClass) {

		Object returnVale = null;
		if (sourceFieldValue != null) {
			if (sourceFieldValue instanceof Date) {
				returnVale = DateUtil.dateToStrByShort(sourceFieldValue);

			}
			if (sourceFieldValue instanceof String) {
				returnVale = DateUtil.strToDate(String.valueOf(sourceFieldValue));

			}

		}

		return returnVale;

	}
}
