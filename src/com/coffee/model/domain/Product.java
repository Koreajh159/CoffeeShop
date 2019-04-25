package com.coffee.model.domain;

public class Product {
	private int product_id;
	private Category category;
	private String name;
	private String filename;
	private int price;
	private int cost;
	private String detail;
	private boolean isOnPoint;
	public int getProduct_id() {
		return product_id;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public boolean isOnPoint() {
		return isOnPoint;
	}
	public void setOnPoint(boolean isOnPoint) {
		this.isOnPoint = isOnPoint;
	}
	
}
