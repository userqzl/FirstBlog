package cn.codeaper.utils;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

/**
 * @description: 数据库连接池工具类
 * @author: qzl
 * @created: 2020/07/21 18:24
 */

public class JDBCUtil {
    private static Properties properties;
    private static DataSource dataSource = null;

    //加载配置文件
    static {
        //加载配置文件
        properties = new Properties();
        InputStream resourceAsStream = JDBCUtil.class.getClassLoader().getResourceAsStream("druid.properties");
        try {
            properties.load(resourceAsStream);
            //获取数据库连接池对象

            dataSource =  DruidDataSourceFactory.createDataSource(properties);

        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //获取数据库连接池对象
    public static DataSource getDataSource(){
        return dataSource;
    }

    public static Connection getConnect() throws SQLException {
        return dataSource.getConnection();
    }

    //释放资源
    public static void close(ResultSet res, Connection con, PreparedStatement statement){
        if(res!=null){
            try {
                res.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(con != null){
            //归还连接
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(statement != null){
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    public static void close(Connection con, PreparedStatement statement){
        if(con != null){
            //归还连接
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(statement != null){
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
