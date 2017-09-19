package com.aidaL.bean.cart;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;

import org.apache.struts2.jasper.tagplugins.jstl.core.ForEach;

public class BuyCart {

	List<CartItem> items = new ArrayList<CartItem>();

	public void addItem(CartItem newItem) {
		for (CartItem item : items) {
			// 判断商品是否存在,如果存在加上数量,并且不执行后面的代码
			if (item.getProductInfo().getPId()
					.equals(newItem.getProductInfo().getPId())) {
				item.setProNum(item.getProNum() + newItem.getProNum());
				return;
			}
		}
		// 没有发现相同的商品的时候
		items.add(newItem);
	}

	public void deleteItem(Integer PId) {
		Iterator<CartItem> iterator = items.iterator();
		while (iterator.hasNext()) {
			CartItem item = iterator.next();
			if (item.getProductInfo().getPId().equals(PId)) {
				iterator.remove();
				return;
			}
		}
	}

	/*
	 * 得到总价(售价)
	 */
	public BigDecimal getTotalPrice() {
		Double totalPrice = 0D;
		for (CartItem item : items) {
			totalPrice += item.getProNum()
					* item.getProductInfo().getPSellprice().doubleValue();
		}
		return new BigDecimal(totalPrice);
	}

	/*
	 * 得到市场价
	 */
	public BigDecimal getTotalMarkPrice() {
		Double totalPrice = 0D;
		for (CartItem item : items) {
			totalPrice += item.getProNum()
					* item.getProductInfo().getPMarketprice().doubleValue();
		}
		return new BigDecimal(totalPrice);
	}

	public BigDecimal getJieyuePrice() {
		Double totalPrice = 0D;
		totalPrice = getTotalMarkPrice().doubleValue() - getTotalPrice().doubleValue();
		return new BigDecimal(totalPrice);
	}

	public List<CartItem> getItems() {
		return items;
	}

	public void setItems(List<CartItem> items) {
		this.items = items;
	}

	@Override
	public String toString() {
		return "BuyCart [items=" + items + "]";
	}

}
