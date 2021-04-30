import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class Content {
    private String brand;
    private String img;
    private String price;
    private String title;
    private String linkurl;
    private String mall;

    //Seters
    public void setImg(String img) {
        this.img = img;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setUrl(String linkurl) {
        this.linkurl = linkurl;
    }

    public void setBrand(String brand) { this.brand = brand; }

    public void setMall(String mall) { this.mall = mall; }

    // Geters
    public String getImg() { return img; }

    public String getLinkurl() { return linkurl; }

    public String getPrice() { return price; }

    public String getTitle() { return title; }

    public String getBrand() { return brand; }

    public String getMall() { return mall; }

}
