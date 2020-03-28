package com.priproducts.util;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class C3P0Util {
	//创建连接池对象
    private static String driver;
    private static String url;
    private static String user;
    private static String password;

    private static int initialSize;
    private static int maxIdle;
    private static int minIdler;
    private static int acquireIncrement;



    private static ComboPooledDataSource pool=new ComboPooledDataSource("mysql");
	static{
		//核心配置
		
		//驱动类driverClass
		/*try {
			pool.setDriverClass("com.mysql.jdbc.Driver");
		} catch (PropertyVetoException e) {
			e.printStackTrace();
		}
		//数据库URL
		pool.setJdbcUrl("jdbc:mysql://localhost:3306/woniushop52");
		//账号
		pool.setUser("root");
		//密码
		pool.setPassword("123456");
		
		
		//设置初始化连接数
		pool.setInitialPoolSize(5);
		//设置最小连接数
		pool.setMinPoolSize(4);
		//设置最大连接数
		pool.setMaxPoolSize(10);
		//设置每次向数据库申请的连接数
		pool.setAcquireIncrement(1);*/

        Properties properties = new Properties();
        try {
            properties.load(C3P0Util.class.getClassLoader().getResourceAsStream("db.properties"));
            driver = properties.getProperty("jdbc.driver");
            url = properties.getProperty("jdbc.url");
            user = properties.getProperty("jdbc.user");
            password = properties.getProperty("jdbc.password");


            initialSize = Integer.parseInt(properties.getProperty("dataSource.initialSize"));
            maxIdle = Integer.parseInt(properties.getProperty("dataSource.maxIdle"));
            minIdler = Integer.parseInt(properties.getProperty("dataSource.minIdle"));
            acquireIncrement = Integer.parseInt(properties.getProperty("dataSource.acquireIncrement"));
            //驱动类driverClass
            pool.setDriverClass(driver);
            //数据库URL
            pool.setJdbcUrl(url);
            //账号
            pool.setUser(user);
            //密码
            pool.setPassword(password);


            //设置初始化连接数
            pool.setInitialPoolSize(initialSize);
            //设置最小连接数
            pool.setMinPoolSize(minIdler);
            //设置最大连接数
            pool.setMaxPoolSize(maxIdle);
            //设置每次向数据库申请的连接数
            pool.setAcquireIncrement(acquireIncrement);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	public static Connection getConnection(){
		Connection con=null;
		try {
			con=pool.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	/**
	 * 资源释放
	 * 
	 * @param set
	 * @param state
	 * @param con
	 */
	public static void close(ResultSet set, Statement state, Connection con) {
		try {
			if (set != null)
				set.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (state != null)
					state.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (con != null)
						con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static void close(ResultSet set, Statement state) {
		try {
			if (set != null)
				set.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (state != null)
					state.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public static void close(Statement state, Connection con) {
		try {
			if (state != null)
				state.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public static void close(Statement state) {
		try {
			if (state != null)
				state.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(Connection con) {

		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
