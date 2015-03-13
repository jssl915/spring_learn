
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class MessageBeanCl {
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
	
	
	public boolean addMessage(String messtitle,String messauthor,String messcontent){   
		
		boolean b=false;
		try{
			ct=new ConnDB().getConn();
			sm=ct.createStatement();
			int a=sm.executeUpdate("insert into t_message(mess_title,mess_author,mess_content) values('"+messtitle+"','"+messauthor+"','"+messcontent+"')");
			if(a==1){
				b=true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return b;
	}
}

