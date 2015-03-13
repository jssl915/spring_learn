package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class OrderBeanCl {

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
	
	
public boolean addOrder(String bookname,String username,String bookprice ,String buynum,String conname,String conphone, String conaddress,String conzipcode){   
		
		boolean b=false;
		try{
			ct=new ConnDB().getConn();
			sm=ct.createStatement();
			int a=sm.executeUpdate("insert into t_order(book_name,user_name,book_price,buy_num,con_name,con_phone,con_address,con_zipcode) values('"+bookname+"' ,'"+username+"','"+bookprice+"' ,'"+buynum+"','"+conname+"','"+conphone+"','"+conaddress+"','"+conzipcode+"')");
			if(a==1){
				b=true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return b;
	}




	
}
