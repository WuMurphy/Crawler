package display;

public class Phone {
	private String title;
	private  String id;
	private String price;
	private String pic;
	private String sku;
	private String url;
	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitle() {
		// TODO Auto-generated method stub
		return title;
	}

	public Phone(String title, String id, String price, String pic, String sku, String url) {
		this.title = title;
		this.id = id;
		this.price = price;
		this.pic = pic;
		this.sku = sku;
		this.url = url;
	}
	
}
