import org.apache.http.HttpEntity;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import javax.script.Invocable;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

public class HtmlParseUntil {
    //这里的Content是一个对象，是扒下来的图片的内容的对象
    public static void parseJD(ArrayList<Content> goodsList, String keyword, String page) throws Exception {
        //获取请求 https://search.jd.com/Search?keyword=java
        //前提需要联网！！
        String url = "https://search.jd.com/Search?keyword="+keyword+"%E6%89%8B%E6%9C%BA&enc=utf-8&psort=3&page="+page;
        //解析网页 jsoup 返回document 这个document就是浏览器JS的document对象
        //所有在js中的方法在这里都可以使用
        Document document = Jsoup.parse(new URL(url), 60000);
        Element element = document.getElementById("J_goodsList");
//        System.out.println(element.html());
        Elements elements = element.getElementsByTag("li");
//        ArrayList<Content> goodsList = new ArrayList<>();

        //获取里面的每个元素 这里的el 是刚刚获取到的所有li
        for (Element el : elements) {
            //price
            String price = el.getElementsByClass("p-price").eq(0).text().replace("￥", "");
            if (price.length() <= 0) continue;
            //picture
            String img = el.getElementsByTag("img").eq(0).attr("data-lazy-img");
            //product title
            String title = el.getElementsByClass("p-name").eq(0).text();
            //product link
            String linkurl = el.getElementsByTag("a").eq(0).attr("href");
            //product brand
            String brand = whichBrand(title);

            Content content = new Content();
            content.setTitle(title);
            content.setImg(img);
            content.setPrice(price);
            content.setUrl(linkurl);
            content.setBrand(brand);

            goodsList.add(content);

        }
//        return goodsList;

    }

    public static void parseTB(ArrayList<Content> goodsList, String keyword, String page) throws Exception {
        //获取请求 https://search.jd.com/Search?keyword=java
        //前提需要联网！！
        CloseableHttpClient httpClient = HttpClients.createDefault();
        String url = "https://s.taobao.com/search?q="+keyword+"&imgfile=&js=1&stats_click=search_radio_all%3A1&ie=utf-8&s="+page;
        HttpGet get = new HttpGet(url);

        get.setHeader("authority", "s.taobao.com");
        get.setHeader("upgrade-insecure-requests", "1");
        get.setHeader("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36");
        get.setHeader("accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9");
        get.setHeader("sec-fetch-site", "cross-site");
        get.setHeader("sec-fetch-mode", "navigate");
        get.setHeader("sec-fetch-user", "?1");
        get.setHeader("sec-fetch-dest", "document");
        get.setHeader("sec-ch-ua", "\"Google Chrome\";v=\"89\", \"Chromium\";v=\"89\", \";Not A Brand\";v=\"99\"");
        get.setHeader("sec-ch-ua-mobile", "?0");
        get.setHeader("accept-language", "zh-CN,zh;q=0.9");
//        get.setHeader("cookie", "enc=MRu4xOwV4pIG5IJ6nANza6dFVKg7kdCoYJtaV%2Bsa5bZRhIqzy%2F0jDT3nQfNNXk%2F%2Bzb3R%2FAvhccqO25MQdhMA9A%3D%3D; thw=cn; t=c54f94aaabe0213a9ea3148a4049a5a8; mt=ci=0_0; tracknick=; _uab_collina=161873863658689901621359; _m_h5_tk=3f9a3d1fe004c94ad76202a8396ea9d3_1618809863877; _m_h5_tk_enc=a8a45b7751eba89f70e3d92cb65523bb; x5sec=7b227365617263686170703b32223a2264346536383339353534663866666366633862626536376336626234356361654350712b2f344d47454c37716959574733704c3366786f4d4d7a45314d4451324d7a41324d6a73784d4b6546677037382f2f2f2f2f77453d227d; JSESSIONID=90E4A76D65D3861480455BD3E9472A4A; l=eBjbTSTnjwWpueLtBOfZourza77TSIRAguPzaNbMiOCP_WfH5w5RW6ahDx8MCnGNh67WR3Jotz36BeYBqIv4n5U62j-la6Dmn; isg=BGZmz0lOOo5zZO4iX5SHkdKAt9zoR6oB1lO9c1APXQlk0wbtuNN0EVKhL8ff-6IZ");
        get.setHeader("cookie", "enc=MRu4xOwV4pIG5IJ6nANza6dFVKg7kdCoYJtaV%2Bsa5bZRhIqzy%2F0jDT3nQfNNXk%2F%2Bzb3R%2FAvhccqO25MQdhMA9A%3D%3D; thw=cn; t=c54f94aaabe0213a9ea3148a4049a5a8; mt=ci=0_0; tracknick=; _uab_collina=161873863658689901621359; _m_h5_tk=3f9a3d1fe004c94ad76202a8396ea9d3_1618809863877; _m_h5_tk_enc=a8a45b7751eba89f70e3d92cb65523bb; JSESSIONID=1780826F5ABC56D3FDDEFBF312AADCE2; x5sec=7b227365617263686170703b32223a223135626365616532313835386232326336383839653564653939356130356465434b334e2f344d47454961616e73616873716e6b49786f4d4d7a45314d4451324d7a41324d6a73784b414977703457436e767a2f2f2f2f2f41513d3d227d; l=eBjbTSTnjwWpul92BOfwhurza77OhIRfguPzaNbMiOCPOaCp5ZchW6ahCm89CnGNnsweR3Jotz3_Bx8_myzHdxv9-eTCgsDKjdLh.; isg=BAkJZZl-jccxVXE7xMXwSNlhGDVjVv2IzZJCCqt-6_Av8igE86RgWXIgNF7EqpXA");

        CloseableHttpResponse response = httpClient.execute(get);
        int statusCode = response.getStatusLine().getStatusCode();
        try {
            HttpEntity entity = response.getEntity();
            if (statusCode == 200) {
                String html = EntityUtils.toString(entity, "utf-8");
                Document document = Jsoup.parse(html);
                Element element = document.getElementById("mainsrp-itemlist");
                Elements elements = element.getElementsByClass("item J_MouserOnverReq  ");

                for (Element el : elements) {
                    //price
                    String price = el.getElementsByClass("price g_price g_price-highlight").eq(0).text().replace("￥", "");
                    if (price.length() <= 0) continue;
                    //picture
                    String img = el.getElementsByTag("img").eq(0).attr("src");
                    //product title
                    String title = el.getElementsByClass("row row-2 title").eq(0).text();
                    //product link
                    String linkurl = el.getElementsByTag("a").eq(0).attr("href");
                    //product brand
                    String brand = whichBrand(title);

                    Content content = new Content();
                    content.setTitle(title);
                    content.setImg(img);
                    content.setPrice(price);
                    content.setUrl(linkurl);
                    content.setBrand(brand);

                    goodsList.add(content);

                }
            } else System.out.println("Fail");
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    public static void parseManManBuy(ArrayList<Content> goodsList, String keyword, String page) throws Exception {
        //获取请求 https://s.manmanbuy.com/Default.aspx?key=手机&searchmode=1&ppid=0&smallclass=57&orderby=score&price1=659&price2=0&f1=0&f2=0&f3=0&f4=0&f5=0&f6=0
        //前提需要联网！！
        String url = "http://s.manmanbuy.com/Default.aspx?key="+word2GBK(keyword)+"&PageID="+page;
        //解析网页 jsoup 返回document 这个document就是浏览器JS的document对象
        //所有在js中的方法在这里都可以使用
        Document document = Jsoup.parse(new URL(url), 60000);
        Element element = document.getElementsByClass("div1100").get(0);
//        System.out.println(element.html());
        Elements elements = element.getElementsByTag("div");
//        ArrayList<Content> goodsList = new ArrayList<>();
        elements.remove(0);

        //获取里面的每个元素 这里的el 是刚刚获取到的所有li
        for (Element el : elements) {
            //price
            String price = el.getElementsByClass("p AreaPrice").eq(0).text().replace("¥", "").replace(".0", ".00");
            //picture
            String img = el.getElementsByTag("img").eq(0).attr("src");
            //product title
            String title = el.getElementsByClass("t").eq(0).text();
            //product link
            String linkurl = el.getElementsByTag("a").eq(0).attr("href");
            //product brand
            String brand = whichBrand(title);
            //which mall the product belongs to
            String mall = el.getElementsByTag("p").eq(0).text() + "," + el.getElementsByTag("p").eq(1).text();

            if (price.length()>0 && img.length()>0 && title.length()>0 && linkurl.length()>0) {
                goodsList.add(createContent(title, img, price, linkurl, brand, mall));
            }
        }

    }

    private static String whichBrand(String title) {
        if ((title.contains("HUAWEI") || title.contains("Huawei") || title.contains("华为"))
                && !(title.contains("荣耀") || title.contains("HONOR"))){
            return "HUAWEI";
        } else if (title.contains("APPLE") || title.contains("Apple") || title.contains("苹果")){
            return "APPLE";
        } else if (title.contains("小米") || title.contains("MI") || title.contains("Redmi")
                || title.contains("红米") || title.contains("XiaoMi") || title.contains("Xiaomi")){
            return "MI";
        } else if (title.contains("SAMSUNG") || title.contains("Samsung") || title.contains("三星")){
            return "SAMSUNG";
        } else {
            return "ELSE";
        }
    }

    private static String word2GBK(String str) throws UnsupportedEncodingException {
        String[] wordArray;
        String gbk = "";
        wordArray = str.split("");
        for (int i=0; i<wordArray.length; i++) {
            gbk += URLEncoder.encode(wordArray[i], "GBK");
        }
        return gbk;
    }

    private static Content createContent(String title, String img, String price, String linkurl, String brand, String mall) {
        Content content = new Content();
        content.setTitle(title);
        content.setImg(img);
        content.setPrice(price);
        content.setUrl(linkurl);
        content.setBrand(brand);
        content.setMall(mall);
        return content;
    }

}
