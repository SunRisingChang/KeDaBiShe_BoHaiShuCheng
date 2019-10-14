package com.etong.action;

import java.util.List;
import java.util.Map;
import com.etong.service.CategoryService;
import com.etong.service.ProductService;
import com.etong.service.UserService;
import com.etong.vo.Category;
import com.etong.vo.Product;
import com.etong.vo.User;

public class UserAction extends SuperAction {

	private static final long serialVersionUID = 3323011616900955781L;
	private UserService userService;
	private CategoryService categoryService;
	private ProductService productService;

	private List<Product> products;
	private User user;
	private Map<String, String> errorInfo;
	private String oldPassword;
	private String newPassword;

	// 初始化分类和商品显示
	public String showIndex() throws Exception {
		List<Category> categories;
		categories = categoryService.listAllCategories();
		session.setAttribute("categories", categories);
		products = productService.listRecentProduct();
		session.setAttribute("products", products);
		return "showIndex";
	}

	// 登录
	public String login() throws Exception {
		User user1 = userService.checkUsername(user.getUsername());
		if (user1 == null) {
			return "login_input";
		}
		User user2 = userService.checkPassword(user.getUsername(),
				user.getPassword());
		if (user2 == null) {
			return "login_input";
		}
		session.setAttribute("user", user2);
		return "login";
	}

	// 注册
	public String register() throws Exception {
		User user1 = userService.checkUsername(user.getUsername());
		if (user1 != null) {
			return "register_input";
		}
		userService.saveUser(user);
		return "register";
	}

	//注销
	public String logout() throws Exception {
		session.removeAttribute("user");
		return "logout";
	}

	//更新个人信息
	public String updateInfo() throws Exception {
		User u = (User) session.getAttribute("user");
		user.setPassword(u.getPassword());
		if(!user.getUsername().equals(u.getUsername())) {
			User u2 = userService.checkUsername(user.getUsername());
			if(u2 != null) {
				return "updateInfoInput";
			}
		}
		userService.updateInfo(user);
		session.setAttribute("user",user);
		return "updateInfo";
	}
	
	//修改密码
	public String changePassword() throws Exception {
		User u = (User) session.getAttribute("user");
		User u2 = userService.checkPassword(u.getUsername(), oldPassword);
		if (u2 == null) {
			return "change_password_input";
		}
		userService.changePassword(user.getUid(), newPassword);
		return "changePassword";
	}
	
	//-------------------------------------------自动装配---------------------
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Map<String, String> getErrorInfo() {
		return errorInfo;
	}

	public void setErrorInfo(Map<String, String> errorInfo) {
		this.errorInfo = errorInfo;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	//-------------------------------------------自动装配---------------------
	
}
