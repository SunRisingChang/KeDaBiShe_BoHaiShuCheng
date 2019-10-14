package com.etong.vo;

import java.util.HashSet;
import java.util.Set;

@SuppressWarnings("rawtypes")
public class Category implements java.io.Serializable {

	private static final long serialVersionUID = -5283971566214356295L;
	private Integer cid;
	private String cname;
	private Set products = new HashSet(0);

	public Category(Integer cid, String cname) {
		super();
		this.cid = cid;
		this.cname = cname;
	}

	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Set getProducts() {
		return products;
	}

	public void setProducts(Set products) {
		this.products = products;
	}

	@Override
	public String toString() {
		return "Category [cid=" + cid + ", cname=" + cname + "]";
	}

}