package model;
import java.sql.*;
public class ConnDB {
	private Connection ct=null;
	public Connection getConn(){
		try{
		Class.forName("com.mysql.jdbc.Driver");
	    ct=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookshop", "root", "123456");
		}catch(Exception e){
			e.printStackTrace();
		}
	    return ct;
	}
}
