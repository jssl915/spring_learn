package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class BookBeanCl {
	private Statement sm = null;
	private ResultSet rs = null;
	private Connection ct = null;
	private int pageCount = 0;//总页数
	private int rowCount = 0;//总数
	private int pageSize = 4;//每页数
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
	/*
	 * 得到书籍总数
	 */
	public int getPageCount() { 
		try {
			ct = new ConnDB().getConn();
			sm=ct.createStatement();
			rs = sm.executeQuery("select count(*) from t_books");
			if (rs.next()) {rowCount = rs.getInt(1);}
			if (rowCount % pageSize == 0) {
				pageCount = rowCount / pageSize;
			} else {
				pageCount = rowCount / pageSize + 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return pageCount;
	}
	
	public ArrayList getUsersByPage(int pageNow) {
		ArrayList<BookBean>bookList = new ArrayList<BookBean>();
		try {
			ct = new ConnDB().getConn();
			sm = ct.createStatement();
			int a = pageSize*(pageNow-1);
			int b = pageSize;
			rs = sm.executeQuery("select * from t_books limit "+a+","+b+"" );		
			while (rs.next()) {
				BookBean bb = new BookBean();
				bb.setBookId(rs.getInt(1));
				bb.setBookName(rs.getString(2));
				bb.setBookPrice(rs.getDouble(3));
				bb.setBookAuthor(rs.getString(4));
				bb.setBookType(rs.getString(5));
				bb.setBookImage(rs.getString(6));
				bb.setRemark(rs.getString(7));					
				bookList.add(bb);   	            			
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return bookList;
	}
	
	public BookBean getBookBean(int bookId){				
		BookBean bb = new BookBean();
			try{
				ct=new ConnDB().getConn();
				sm=ct.createStatement();
				rs=sm.executeQuery("select * from t_books where book_id='"+bookId+"' ");
				
				if(rs.next()){					
					bb.setBookId(rs.getInt(1));
					bb.setBookName(rs.getString(2));
					bb.setBookPrice(rs.getDouble(3));
					bb.setBookAuthor(rs.getString(4));
					bb.setBookType(rs.getString(5));
					bb.setBookImage(rs.getString(6));
					bb.setRemark(rs.getString(7));	
			}
				
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				close();
			}
			return bb;
		}

}
