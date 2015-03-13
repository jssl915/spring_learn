package model;

public class OrderBean {
	private int orderId;
	private String bookName;
	private String userName;
	private Double bookPrice;
	private String buyNum;
	private String conName;
	private String conPhone;	
	private String conAddress;
	private String conZipcode;
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getUerName() {
		return userName;
	}
	public void setUerName(String uerName) {
		this.userName = uerName;
	}
	public Double getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(Double bookPrice) {
		this.bookPrice = bookPrice;
	}
	public String getBuyNum() {
		return buyNum;
	}
	public void setBuyNum(String buyNum) {
		this.buyNum = buyNum;
	}
	public String getConName() {
		return conName;
	}
	public void setConName(String conName) {
		this.conName = conName;
	}
	public String getConPhone() {
		return conPhone;
	}
	public void setConPhone(String conPhone) {
		this.conPhone = conPhone;
	}
	public String getConAddress() {
		return conAddress;
	}
	public void setConAddress(String conAddress) {
		this.conAddress = conAddress;
	}
	public String getConZipcode() {
		return conZipcode;
	}
	public void setConZipcode(String conZipcode) {
		this.conZipcode = conZipcode;
	}
	
}
