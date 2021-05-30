import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class SmallTest {

    final static String JD = "jd_item";
    final static String MMB = "mmb_item";
    final static String TB = "tb_item";

    /**
     * create file
     * @param fileName name of the file to create
     * @return flag
     */
    public static boolean createFile(File fileName)throws Exception {
        boolean flag = false;
        try {
            if (!fileName.exists()) {
                fileName.createNewFile();
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * read txt file
     * @param fileName name of the txt file to read
     * @return content string
     */
    public static String readTxtFile(File fileName)throws Exception {
        String result = null;
        try (FileReader fileReader = new FileReader(fileName); BufferedReader bufferedReader = new BufferedReader(fileReader)) {
            try {
                String read = null;
                while ((read = bufferedReader.readLine()) != null) {
                    result = result + read + "\r\n";
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("The content be readed is: "+"\r\n"+result);
        return result;
    }

    /**
     *
     * @param content the content to write into the file
     * @param fileName the name of the file to be witten
     * @return flag
     */
    public static boolean writeTxtFile(String content,File  fileName)throws Exception{
        RandomAccessFile mm=null;
        boolean flag=false;
        FileOutputStream o=null;
        try {
            o = new FileOutputStream(fileName);
            o.write(content.getBytes("GBK"));
            o.close();
            mm=new RandomAccessFile(fileName,"rw");
            mm.writeBytes(content);
            flag=true;
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }finally{
            if(mm!=null){
                mm.close();
            }
        }
        return flag;
    }

    /**
     * update content to the txt file
     * @param filePath the path of the selected txt file
     * @param content the new content to be updated to the file
     */
    public static void contentToTxt(String filePath, String content) {
        String str;  //the origin txt file content
        StringBuilder s1 = new StringBuilder("");   //content update
        try {
            File f = new File(filePath);
            if (f.exists()) {
//                System.out.print("file exists\n");
            } else {
                System.out.print("file doesn't exist\n");
                f.createNewFile();  //creat the file if not exist
                System.out.print("create successfully\n");
            }
            BufferedReader input = new BufferedReader(new FileReader(f));

            while ((str = input.readLine()) != null) {
                s1.append(str).append("\n");
            }
//            System.out.println(s1);
            input.close();
            s1.append(content);

            BufferedWriter output = new BufferedWriter(new FileWriter(f));
            output.write(s1.toString());
            output.close();
        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    /**
     * get the products information: price, name, url, picture...
     * @param keyword information entered in the Jingdong search box
     * enc: Encoding method (changeable: default UTF-8)
     * psort=3: Search method By default, comprehensive query is not given psort value
     * page=number: Do not consider paging according to the cardinal number when dynamic loading,
     *                30 entries per page
     */
    public static void smallJDCrawler(String keyword, String page) throws Exception {
        String url = "https://search.jd.com/Search?keyword="+keyword+"%E6%89%8B%E6%9C%BA&enc=utf-8&psort=3&page="+page;
        Document doc = Jsoup.connect(url).maxBodySize(0).get();

        Elements ulList = doc.select("ul[class='gl-warp clearfix']");
        Elements liList = ulList.select("li[class='gl-item']");

        for (Element item : liList) {
            if (!item.select("span[class='p-promo-flag']").text().trim().equals("广告")) {
                contentToTxt("D:/WHY/Java Project/CPT202/JingDong/src/main/test.txt", item.select("div[class='p-price']").select("i").text() +
                        "," + item.select("div[class='p-name p-name-type-2']").select("em").text());
//                System.out.println(item.select("div[class='p-name p-name-type-2']").select("em").text());
            }
        }
    }

    private static void intoDB(ArrayList<Content> goodsList, String db_name) {
        for (Content item : goodsList) {
            if (!DatabaseOperation.checkExistence(item, db_name)){
                boolean result = DatabaseOperation.saveContent(item, db_name);
                if (result){
                    System.out.println("add successfully");
                } else System.out.println("add fail");
            }else System.out.println("Item already in database");
        }
    }

    public static void jdCrawlerDB(String keyword) throws Exception {
        System.out.println("Start JingDong");

        ArrayList<Content> goodsList = new ArrayList<>();
        HtmlParseUntil.parseJD(goodsList, keyword, "1");
        HtmlParseUntil.parseJD(goodsList, keyword, "2");
        HtmlParseUntil.parseJD(goodsList, keyword, "3");
        HtmlParseUntil.parseJD(goodsList, keyword, "4");

        intoDB(goodsList, JD);

        System.out.println("finish JingDong");
    }

    public static void mmbCrawlerDB(String keyword) throws Exception {
        System.out.println("Start ManManBuy");

        ArrayList<Content> goodsList = new ArrayList<>();
        HtmlParseUntil.parseManManBuy(goodsList, keyword, "1");
        HtmlParseUntil.parseManManBuy(goodsList, keyword, "2");
        HtmlParseUntil.parseManManBuy(goodsList, keyword, "3");
        HtmlParseUntil.parseManManBuy(goodsList, keyword, "4");
        HtmlParseUntil.parseManManBuy(goodsList, keyword, "5");
        HtmlParseUntil.parseManManBuy(goodsList, keyword, "6");
        HtmlParseUntil.parseManManBuy(goodsList, keyword, "7");
        HtmlParseUntil.parseManManBuy(goodsList, keyword, "8");

        intoDB(goodsList, MMB);

        System.out.println("finish ManManBuy");
    }

    public static void tbCrawlerDB(String keyword) throws Exception {
        System.out.println("Start TaoBao");

        ArrayList<Content> goodsList = new ArrayList<>();
        HtmlParseUntil.parseTB(goodsList, keyword, "1");
        HtmlParseUntil.parseTB(goodsList, keyword, "44");

        intoDB(goodsList, TB);

        System.out.println("finish TaoBao");
    }

    public static void main(String[] args) throws Exception {
        String keyword = "三星手机";
        jdCrawlerDB(keyword);
//        tbCrawlerDB(keyword);
        mmbCrawlerDB(keyword);
    }

}
