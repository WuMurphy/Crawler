package com.Cai.collection;

import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;

public class WebUtils {
	public static <T> T copyParamToBean( Map value , T bean ){
	    try {
	        System.out.println("ע��֮ǰ��" + bean);
	        /**
	         * ����������Ĳ�����ע�뵽user������
	         */
	        BeanUtils.populate(bean, value);
	        System.out.println("ע��֮��" + bean);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return bean;
	}
	//���������ͽ���ת��
	  public static int parseInt(String strInt, int defaultValue) {
	        try {
	            return Integer.parseInt(strInt);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return defaultValue;
	  }
	
}
