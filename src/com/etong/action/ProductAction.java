package com.etong.action;

import java.util.List;
import com.etong.service.ProductService;
import com.etong.vo.Product;

public class ProductAction extends SuperAction{

	private static final long serialVersionUID = 7333764815409970487L;
	private ProductService productService;
	
	private int p;
	private int cid;
	private List<Product> products;
	private Product product;
	private int pid;
	private String pname;
	
	//按cid列出所有商品
	public String listAllProductByPageAndCid() throws Exception {
		products = productService.listAllProductByPageAndCid(cid);
		session.setAttribute("products", products);
		return "listAllProductByPageAndCid";
	}
	
	//按pid列出某个商品
	public String listOneProductByPid() throws Exception {
		product = productService.listOneProductByPid(pid);
		return "listOneProductByPid";
	}
	
	//按名字列出所有商品
	public String listAllProductByPageAndPname() throws Exception {
		products = productService.listAllProductByPageAndPname(pname);
		session.setAttribute("products", products);
		return "listAllProductByPageAndPname";
	}
	
	//-----------------------------------------自动装配----------------------
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public int getP() {
		return p;
	}

	public void setP(int p) {
		this.p = p;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	//-----------------------------------------自动装配----------------------
}
