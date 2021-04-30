package com.Cai.collection;

public class CommodityDaoImpl extends BaseDao implements CommodityDao {
	  @Override
	    public int addBook(Book book) {

	        String sql = "insert into t_book(`name`,`author`,`price`,`sales`,`stock`,`img_path`) values(?,?,?,?,?,?)";

	        return update(sql, book.getName(),book.getAuthor(),book.getPrice(),book.getSales(),book.getStock(),book.getImgPath());
	    }

	    @Override
	    public int deleteCommodityById(Integer id) {
	        String sql = "delete from f_commodity where id = ?";
	        return update(sql, id);
	    }

	    @Override
	    public int updateBook(Commodity comm) {
	        String sql = "update t_book set `name`=?,`author`=?,`price`=?,`sales`=?,`stock`=?,`img_path`=? where id = ?";
	        return update(sql,book.getName(),book.getAuthor(),book.getPrice(),book.getSales(),book.getStock(),book.getImgPath(),book.getId());
	    }

	    @Override
	    public Book queryBookById(Integer id) {
	        String sql = "select `id` , `name` , `author` , `price` , `sales` , `stock` , `img_path` imgPath from t_book where id = ?";
	        return queryForOne(Book.class, sql,id);
	    }

	    @Override
	    public List<Book> queryBooks() {
	        String sql = "select `id` , `name` , `author` , `price` , `sales` , `stock` , `img_path` imgPath from t_book";
	        return queryForList(Book.class, sql);
	    }
}
