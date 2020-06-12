package com.nt.beans;

public class CustomerBean {
	private  int cno;
	private String cname;
	private  String cadd;
	private float billAmt;

	 public CustomerBean() {
		System.out.println("CustomerBean:: 0-param constructor");
	}
	
	public int getCno() {
		System.out.println("CustomerBean.getCno()");
		return cno;
	}
	public void setCno(int cno) {
		System.out.println("CustomerBean.setCno()");
		this.cno = cno;
	}
	public String getCname() {
		System.out.println("CustomerBean.getCname()");
		return cname;
	}
	public void setCname(String cname) {
		System.out.println("CustomerBean.setCname()");
		this.cname = cname;
	}
	public String getCadd() {
		System.out.println("CustomerBean.getCadd()");
		return cadd;
	}
	public void setCadd(String cadd) {
		System.out.println("CustomerBean.setCadd()");
		this.cadd = cadd;
	}
	public float getBillAmt() {
		System.out.println("CustomerBean.getBillAmt()");
		return billAmt;
	}
	public void setBillAmt(float billAmt) {
		System.out.println("CustomerBean.setBillAmt()");
		this.billAmt = billAmt;
	}
	
	@Override
	public String toString() {
		return "CustomerBean [cno=" + cno + ", cname=" + cname + ", cadd=" + cadd + ", billAmt=" + billAmt + "]";
	}
	
	

}
