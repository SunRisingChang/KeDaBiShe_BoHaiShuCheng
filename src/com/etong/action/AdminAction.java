package com.etong.action;

import java.io.File;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import com.etong.service.AdminService;
import com.etong.service.CategoryService;
import com.etong.service.OrderService;
import com.etong.service.ProductService;
import com.etong.vo.Admin;
import com.etong.vo.Category;
import com.etong.vo.Order;
import com.etong.vo.Product;

public class AdminAction extends SuperAction {

	private static final long serialVersionUID = -2883052877634871037L;
	private ProductService productService;
	private AdminService adminService;
	private CategoryService categoryService;
	private OrderService orderService;

	// 接收管理员from
	private Admin admin;

	// 接收商品from
	private Product product;

	// 接收分类form
	private Category category;

	// 商品文件上传信息
	private File upload;
	private String uploadFileName;
	private String uploadContentType;

	// 登录
	public String login() throws Exception {
		if (adminService.login(admin)) {
			session.setAttribute("admin", admin);
			return "login";
		}
		return "login_input";
	}

	// 注销
	public String logout() throws Exception {
		session.removeAttribute("admin");
		return "logout";
	}

	// 按名字列出所有商品
	public String listAllProductByPageAndPname() throws Exception {
		List<Product> products = productService.listAllProductByPageAndPname(request.getParameter("pname"));
		session.setAttribute("products", products);
		return "listAllProductByPageAndPname";
	}

	// 列出所有分类
	public String listAllCategory() throws Exception {
		List<Category> categories = categoryService.listAllCategories();
		request.setAttribute("categories", categories);
		return "listAllCategory";
	}

	// 添加分类
	public String saveCategory() throws Exception {
		categoryService.saveCategory(category);
		return "saveOrUpdateCategory";
	}

	// 显示待修改的分类信息，接收cid
	public String updateCategoryInput() throws Exception {
		category = categoryService.listOneCategoryByCid(Integer.parseInt(request.getParameter("cid")));
		return "updateCategoryInput";
	}

	// 更新分类信息
	public String updateCategory() throws Exception {
		categoryService.saveCategory(category);
		return "saveOrUpdateCategory";
	}

	// 删除分类信息
	public String deleteCategory() throws Exception {
		categoryService.deleteCategory(Integer.parseInt(request.getParameter("cid")));
		return "deleteCategory";
	}

	// 列出所有商品
	public String listAllProductByPage() throws Exception {
		List<Product> products = productService.listAllProductByPage();
		session.setAttribute("products", products);
		return "listAllProductByPage";
	}

	// 按cid列出所有商品
	public String listAllProductByPageAndCid() throws Exception {
		List<Product> products = productService.listAllProductByPageAndCid(Integer.parseInt(request.getParameter("cid")));
		session.setAttribute("products", products);
		return "listAllProductByPageAndCid";
	}

	// 按pid列出某个商品详细信息
	public String listOneProductByPid() throws Exception {
		product = productService.listOneProductByPid(Integer.parseInt(request.getParameter("pid")));
		return "listOneProductByPid";
	}

	// 跳转到添加商品页面
	public String saveProductInput() throws Exception {
		List<Category> categories = categoryService.listAllCategories();
		request.setAttribute("categories", categories);
		return "saveProductInput";
	}

	// 添加商品
	public String saveProduct() throws Exception {	
		if (upload != null) {
			String path = ServletActionContext.getServletContext().getRealPath("/image");
			File file = new File(path + "//" + uploadFileName);
			FileUtils.copyFile(upload, file);
			product.setImage("image/" + uploadFileName);
		}
		product.setCategory(category);
		productService.saveProduct(product);
		return "saveProduct";
	}

	// 跳转到编辑商品页面
	public String updateProductInput() throws Exception {
		List<Category> categories = categoryService.listAllCategories();
		product = productService.listOneProductByPid(Integer.parseInt(request.getParameter("pid")));
		request.setAttribute("categories", categories);
		return "updateProductInput";
	}

	// 更新商品
	public String updateProduct() throws Exception {	
		if (upload != null) {
			String path = ServletActionContext.getServletContext().getRealPath("/" + product.getImage());
			File file = new File(path);
			file.delete();
			String path2 = ServletActionContext.getServletContext().getRealPath("/image");
			File file2 = new File(path2 + "/" + uploadFileName);
			FileUtils.copyFile(upload, file2);
			product.setImage("image/" + uploadFileName);
		}
		product.setCategory(category);
		productService.updateProduct(product);
		return "updateProduct";
	}

	// 删除商品
	public String deleteProduct() throws Exception {
		Product product1 = productService.listOneProductByPid(Integer.parseInt(request.getParameter("pid")));
		String path = ServletActionContext.getServletContext().getRealPath("/" + product1.getImage());
		File file = new File(path);
		file.delete();
		productService.deleteProduct(Integer.parseInt(request.getParameter("pid")));
		return "deleteProduct";
	}

	// 列出已支付的订单
	public String listPayedOrder() throws Exception {
		List<Order> orders = orderService.listPayedOrder();
		request.setAttribute("orders", orders);
		return "listPayedOrder";
	}

	// 列出完成交易的订单
	public String listCompletedOrder() throws Exception {
		List<Order> orders = orderService.listCompletedOrder();
		request.setAttribute("orders", orders);
		return "listCompletedOrder";
	}

	// 发货
	public String deleverGoods() throws Exception {
		orderService.deleverGoods(Integer.parseInt(request.getParameter("oid")));
		return "deleverGoods";
	}

	// 通知收货
	public String informReceiveGoods() throws Exception {
		orderService.informReceiveGoods(Integer.parseInt(request.getParameter("oid")));
		return "informReceiveGoods";
	}

	// --------------------------------------自动装配方法-------------------------------------------
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
	// --------------------------------------自动装配方法-------------------------------------------

}
