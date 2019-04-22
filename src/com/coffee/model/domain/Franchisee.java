package com.coffee.model.domain;

public class Franchisee {
	private int franchisee_id;
	private String name;
	private String addr;
	private int lati;
	private int longi;
	private int checked;
	public int getChecked() {
		return checked;
	}
	public void setChecked(int checked) {
		this.checked = checked;
	}
	private Member member;
	public int getFranchisee_id() {
		return franchisee_id;
	}
	public void setFranchisee_id(int franchisee_id) {
		this.franchisee_id = franchisee_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public int getLati() {
		return lati;
	}
	public void setLati(int lati) {
		this.lati = lati;
	}
	public int getLongi() {
		return longi;
	}
	public void setLongi(int longi) {
		this.longi = longi;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	
	
}
