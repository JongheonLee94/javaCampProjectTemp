package util;

import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Util {
	public static int parseInt(String l) {
		try {
			int r = Integer.parseInt(l);
			return r;
		}
		catch(Exception e) {
			return -1;
		}
	}
	 public static String h(String content){
	        if( content == null || content.equals("")){
	            return content;
	        }
	        try{
	            byte[] bs = content.getBytes("8859_1");
	            content = new String(bs, StandardCharsets.UTF_8);
	        }catch (Exception e){

	        }
	        return content;
	    }
	 
	 public static Connection getConn() throws ClassNotFoundException, SQLException {
		 	Class.forName("oracle.jdbc.driver.OracleDriver");
		 	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE", "HR", "HR");
		 	return conn;
	 }
}

