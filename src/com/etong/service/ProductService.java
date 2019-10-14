package com.etong.service;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import com.etong.dao.ProductDao;
import com.etong.vo.Product;

@Transactional
public class ProductService {

	private ProductDao productDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	// 累出最近出版的20条商品
	public List<Product> listRecentProduct() {
		return productDao.listRecentProduct();
	}

	// 通过cid列出所有商品
	public List<Product> listAllProductByPageAndCid(int cid) {
		List<Product> list = productDao.listAllProductByPage(cid);
		return list;
	}

	// 按pid列出某个商品详细信息
	public Product listOneProductByPid(int pid) {
		return productDao.listOneProductByPid(pid);
	}

	// 按商品名列出所有商品
	public List<Product> listAllProductByPageAndPname(String pname) {
		List<Product> list = productDao.listAllProductByPageAndPname(pname);
		return list;
	}

	public List<Product> listAllProductByPage() {
		List<Product> list = productDao.listAllProductByPage();
		return list;
	}

	public void saveProduct(Product product) {
		productDao.saveProduct(product);
	}

	public void deleteProduct(int pid) {
		productDao.deleteProduct(pid);
	}

	public void updateProduct(Product product) {
		productDao.updateProduct(product);
	}

}
