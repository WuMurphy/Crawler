package com.Cai.collection;

import java.util.List;

public interface CommodityDao {
    public String addBook(Commodity comm);

    public String deleteCommodityById(String url);

    public Commodity queryBookById(Integer id);

    public List<Commodity> queryBooks();

}
