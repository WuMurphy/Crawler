package com.Cai.collection;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class Favorite {
	//string��Ϊkey����Ʒ��url
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
        // �Ȳ鿴���ﳵ���Ƿ��Ѿ���ӹ�����Ʒ���������ӣ��������ۼӣ��ܽ����£����û����ӹ���ֱ�ӷŵ������м���
        Commodity item = items.get(favoriteItem.getUrl());
        if (item == null) {
            // ֮ǰû��ӹ�����Ʒ
            items.put(favoriteItem.getUrl(), favoriteItem);
        } 
        else {
        	System.out.println("This commodity has been added");
        }
        }
	//ɾ���ղص���Ʒ
	   public void deleteItem(String url) {
	        items.remove(url);
	    }
	   //����ղؼ�
	   public void clear() {
	        items.clear();
	    }
	public List<Commodity> getCollectionItems(Commodity comm) {
		ArrayList<Commodity>list = new ArrayList<Commodity>() ;
		list.add(comm);
		return list;
	}

	 
}
