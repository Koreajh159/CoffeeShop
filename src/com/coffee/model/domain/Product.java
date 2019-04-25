package com.coffee.model.domain;

import org.springframework.web.multipart.MultipartFile;

public class Product {
<<<<<<< HEAD
   private int product_id;
   private Category category;
   private String name;
   private String filename;
   private MultipartFile myFile; // 여기로 파일이 들어옴
   private int price;
   private int cost;
   public int getProduct_id() {
      return product_id;
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
   public MultipartFile getMyFile() {
      return myFile;
   }
   public void setMyFile(MultipartFile myFile) {
      this.myFile = myFile;
   }
   public int getPrice() {
      return price;
   }
   public void setPrice(int price) {
      this.price = price;
   }
   public int getCost() {
      return cost;
   }
   public void setCost(int cost) {
      this.cost = cost;
   }
   
}
=======
	private int product_id;
	private Category category;
	private String name;
	private String filename;
	private int price;
	private int cost;
	private String detail;
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
	
}
>>>>>>> 2dea7c34e2e21c78ef6119056daf24aec9602343
