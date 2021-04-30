package com.Cai.collection;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class Favorite {
	//string作为key是商品的url
	private Map<String, Commodity> items = new LinkedHashMap<String,Commodity>();
	private Commodity comm;

	public Favorite(Commodity comm) {
		this.comm= comm;
	}

	public Commodity getComm() {
		return comm;
	}

	public void setComm(Commodity comm) {
		this.comm = comm;
	}
	public void addItem(Commodity favoriteItem) {
        // 先查看购物车中是否已经添加过此商品，如果已添加，则数量累加，总金额更新，如果没有添加过，直接放到集合中即可
        Commodity item = items.get(favoriteItem.getUrl());
        if (item == null) {
            // 之前没添加过此商品
            items.put(favoriteItem.getUrl(), favoriteItem);
        } 
        else {
        	System.out.println("This commodity has been added");
        }
        }
	//删除收藏的商品
	   public void deleteItem(String url) {
	        items.remove(url);
	    }
	   //清空收藏夹
	   public void clear() {
	        items.clear();
	    }
	public List<Commodity> getCollectionItems(Commodity comm) {
		ArrayList<Commodity>list = new ArrayList<Commodity>() ;
		list.add(comm);
		return list;
	}

	 
}
