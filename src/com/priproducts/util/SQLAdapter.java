package com.priproducts.util;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SQLAdapter {
	public static boolean sqlUpdate(Connection con,String sql,Object[] params){
		boolean re=false;
		if(con==null || sql==null){
			return re;
		}
		//创建状态
		PreparedStatement state=null;
		try {
			state=con.prepareStatement(sql);
			//设置参数
			if(params!=null){
				for (int i = 0; i < params.length; i++) {
					Object o=params[i];
					state.setObject(i+1, o);
				}
			}
			//执行SQL
			int row=state.executeUpdate();
			if(row>0){
				re=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			C3P0Util.close(state);
		}
		return re;
	}
	public static <T> T sqlQueryOneRow(Connection con,String sql,Object[] params,Class<T> cl){
		T po=null;
		if(con==null || sql==null || cl==null){
			return po;
		}
		PreparedStatement state=null;
		ResultSet set=null;
		try {
			state=con.prepareStatement(sql);
			//设置参数
			if(params!=null){
				for (int i = 0; i < params.length; i++) {
					Object o=params[i];
					state.setObject(i+1, o);
				}
			}
			//执行SQL
			set=state.executeQuery();
			//处理结果集
			if(set.next()){
				//创建目标类对象
				po=cl.newInstance();
				//获取本类所有属性
				Field[] fields=cl.getDeclaredFields();
				for (Field field : fields) {
					//获取属性名称
					String fieldName=field.getName();
					try {
						Object val=set.getObject(fieldName);
						//突破访问权限
						field.setAccessible(true);
						//将数据库中取出的值赋给对应属性
						field.set(po, val);
					} catch (Exception e) {
					}
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			C3P0Util.close(set, state);
		}
		return po;
	}
	public static <T> List<T> sqlQueryRows(Connection con,String sql,Object[] params,Class<T> cl){
		List<T> list=new ArrayList<>();
		if(con==null || sql==null || cl==null){
			return list;
		}
		PreparedStatement state=null;
		ResultSet set=null;
		try {
			state=con.prepareStatement(sql);
			//设置参数
			if(params!=null){
				for (int i = 0; i < params.length; i++) {
					state.setObject(i+1, params[i]);
				}
			}
			//执行SQL
			set=state.executeQuery();
			while(set.next()){
				//创建PO对象
				T po=cl.newInstance();
				//获取本类所有属性
				Field[] fields=cl.getDeclaredFields();
				for (Field field : fields) {
					//获取属性名称
					String fieldName=field.getName();
					//尝试按属性名称从结果集中取出数据
					try {
						Object obj=set.getObject(fieldName);
						//突破访问权限
						field.setAccessible(true);
						//赋值
						field.set(po, obj);
					} catch (Exception e) {
					}
				}
				list.add(po);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			C3P0Util.close(set, state);
		}
		return list;
	}
	
	public static <T> T sqlQueryOneRowOneColumn(Connection con,String sql,Object[] params,Class<T> cl){
		T val=null;
		if(con==null || sql==null || cl==null){
			return val;
		}
		PreparedStatement state=null;
		ResultSet set=null;
		try {
			state=con.prepareStatement(sql);
			//设置参数
			if(params!=null){
				for (int i = 0; i < params.length; i++) {
					state.setObject(i+1, params[i]);
				}
			}
			//执行SQL
			set=state.executeQuery();
			if(set.next()){
				val=(T) set.getObject(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			C3P0Util.close(set, state);
		}
		
		return val;
	}
	
}
