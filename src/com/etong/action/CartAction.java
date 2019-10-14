package com.etong.action;

import com.etong.service.ProductService;
import com.etong.vo.Cart;
import com.etong.vo.CartItem;
import com.etong.vo.User;

public class CartAction extends SuperAction {

	private static final long serialVersionUID = -2999550028797475076L;
	private ProductService productService;
	
	//获得商品的pid
	private int pid;
	//获得购买数量
	private int count;
	
	//添加到购物车
	public String addCartItem() throws Exception {
		User user=(User)session.getAttribute("user");
		if (user==null) {
			return "login_input";
		}
		CartItem cartItem=new CartItem();
		cartItem.setCount(count);
		cartItem.setProduct(productService.listOneProductByPid(pid));
		Cart cart=(Cart)session.getAttribute("cart");
		if (cart==null) {
			Cart cart2=new Cart();
			cart2.addCartItem(cartItem);
			session.setAttribute("cart", cart2);
		}else{
			cart.addCartItem(cartItem);
		}
		return "addCartItem";
	}
	
	//移除一个购物车条目，接收pid
	public String removeCartItem() throws Exception {
		Cart cart = (Cart) session.getAttribute("cart");
		cart.removeCartItem(pid);
		return "removeCartItem";
	}
	
	//清空购物车
	public String clearCart() throws Exception{
		Cart cart = (Cart) session.getAttribute("cart");
		cart.clearCart();
		return "clearCart";
	}

	//---------------------------自动装配----------------------------
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	//---------------------------自动装配----------------------------
	
}
