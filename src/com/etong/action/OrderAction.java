package com.etong.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.etong.service.OrderService;
import com.etong.vo.Cart;
import com.etong.vo.CartItem;
import com.etong.vo.Order;
import com.etong.vo.OrderItem;
import com.etong.vo.User;

public class OrderAction extends SuperAction{

	private static final long serialVersionUID = 4485439913792284962L;
	private OrderService orderService;
	
	private Order order;
	private List<Order> orders = new ArrayList<Order>();
	private int oid;
	
	//提交订单,购物车-->订单
	@SuppressWarnings("unchecked")
	public String submitOrder() throws Exception {
		Order o = new Order();
		Cart cart = (Cart) session.getAttribute("cart");
		User u =(User) session.getAttribute("user");
		if(cart.getMap().size() > 0) {
			o.setTotal(cart.getTotal());
			o.setTime(new Date());
			o.setState(0);
			o.setUser(u);
			o.setRealname(u.getRealname());
			o.setPhone(u.getPhone());
			o.setAddress(u.getAddress());
			o.setZipcode(u.getZipcode());
			for(CartItem cartItem : cart.getMap().values()){
				OrderItem orderItem = new OrderItem();
				orderItem.setSubTotal(cartItem.getSubTotal());
				orderItem.setCount(cartItem.getCount());
				orderItem.setProduct(cartItem.getProduct());
				orderItem.setOrder(o);
				o.getOrderItems().add(orderItem);
			}
		}
		cart.clearCart();
		order = o;
		orderService.submitOrder(order);
		return "submitOrder";
	}
	
	//按uid查看所有订单
	public String listAllOrderByUid() throws Exception {
		User user = (User) session.getAttribute("user");
		orders = orderService.listAllOrderByUid(user.getUid());
		return "listAllOrderByUid";
	}
		
	//去支付订单的页面,通过订单号显示该订单
	public String toPayOrder() throws Exception {
		order = orderService.listOrderByOid(oid);
		return "toPayOrder";
	}
	
	//支付订单
	public String payOrder() throws Exception {
		orderService.payOrder(oid);
		return "payOrder";
	}

	//确认收货
	public String verifyReceiveGoods() throws Exception {
		orderService.verifyReceiveGoods(oid);
		return "verifyReceiveGoods";
	}
	
	//--------------------自动装配---------------------------------
	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}
	
	//--------------------自动装配---------------------------------
	
}