
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserBeanCl {
	private Statement sm = null;
	private ResultSet rs = null;
	private Connection ct = null;	
	
	public void close() { 
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
			if (sm != null) {
				sm.close();
				sm = null;
			}
			if (ct != null) {
				ct.close();
				ct = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean checkUser(String u, String p) {
		boolean flag = false;
		try {
			ct = new ConnDB().getConn();
			sm = ct.createStatement();
			rs = sm.executeQuery("select * from t_user where user_name='"
					+ u + "' and pass_word ='"+ p + "' ");
			if(rs.next()){
				flag=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally { 
			this.close();
		}
		return flag;
	}	
	
	public boolean addUser(String username,String password,String userphone,String useraddress){   
		
		boolean b=false;
		try{
			ct=new ConnDB().getConn();
			sm=ct.createStatement();
			int a=sm.executeUpdate("insert into t_user(user_name,pass_word,user_phone,user_address) values('"+username+"','"+password+"','"+userphone+"','"+useraddress+"')");
			if(a==1){
				b=true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return b;
	}
}

