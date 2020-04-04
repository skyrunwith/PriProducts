 package com.priproducts.util;

 
public class Sys {
	 
	public static class Common{
		public static String front="jsp";
		public static String admin="admin";
		
		public static Integer NO_USE=0;
		public static Integer USE=1;
		
		public static Integer pageSize=10;
	} 
	
	public static class Upimg{
		public static String path="/upimgs";//图片上传
		
		public static String ad="/ad/";
		 
		public static String goods="/goods/";
	} 
	
	public static class front{
		public static String front = "front";
	}
	
	public static class Ostatus{
		/**
		 * 待付款 0
		 */
		public static final Integer DFK = 0;
		/**
		 * 待发货 1
		 */
		public static final Integer DFH = 1;
		/**
		 * 待收货 2
		 */
		public static final Integer DSH = 2;
		/**
		 * 待评价 3
		 */
		public static final Integer DPJ = 3;
		/**
		 * 已完成 4
		 */
		public static final Integer YWC = 4;
		/**
		 * 退款中 5
		 */
		public static final Integer TKZ = 5;
		/**
		 * 退货退款中 6
		 */
		public static final Integer THTK = 6;
		/**
		 * 已完成退货退款 7
		 */
		public static final Integer TKCG = 7;
		/**
		 * 已失效 -1
		 */
		public static final Integer YSX = -1;
	}
	
	public static class email{
		/**
		 * 邮箱发件人 761647197@qq.com
		 */
		public static String from = "761647197@qq.com";
		/**
		 * 邮箱的授权码
		 */
		public static String code = "wjynbcqiqeoxbdhf";
		/**
		 * 邮件的主题 幸福之家花店账号注册
		 */
		public static String subject = "幸福之家花店账号注册";
		/**
		 * 邮件的内容 
		 */
		public static String text = "欢迎来到幸福之家花店,这是一封验证邮箱,如果此操作并不是由您发起的,请忽略此邮件。您的验证码是：";
	}
	
}
