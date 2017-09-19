package com.aidaL.action;

import java.util.Map;

import com.aidaL.bean.AdProductInfo;
import com.aidaL.bean.cart.BuyCart;
import com.aidaL.bean.cart.CartItem;
import com.aidaL.service.IProductInfoService;
import com.opensymphony.xwork2.ActionContext;

/**
 * 购物车Action
 * 
 * @author Luff
 * 
 */
public class BuyCartAction extends BaseAction {

	private Integer PId;
	private IProductInfoService productInfoService;

	public void setProductInfoService(IProductInfoService productInfoService) {
		this.productInfoService = productInfoService;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String save() throws Exception {
		System.out.println("i。。。" + PId);
		Map<String, Object> session = ActionContext.getContext().getSession();
		BuyCart buyCart = (BuyCart) session.get("BUYCART_IN_SESSION");
		System.out.println("buyCart" + buyCart);
		if (buyCart == null) {
			buyCart = new BuyCart();
			session.put("BUYCART_IN_SESSION", buyCart);
		}
		CartItem item = new CartItem();
		AdProductInfo productInfo = productInfoService.get(PId);
		System.out.println(productInfo);
		item.setProductInfo(productInfo);
		item.setProNum(1);
		buyCart.addItem(item);
		return RELOAD;
	}
	
	public String delete() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		BuyCart buyCart = (BuyCart) session.get("BUYCART_IN_SESSION");
		buyCart.deleteItem(PId);
		return SUCCESS;
	}
	
	

	public String myCart() throws Exception {
		return "mycart";
	}

	public Integer getPId() {
		return PId;
	}

	public void setPId(Integer pId) {
		PId = pId;
	}

}
