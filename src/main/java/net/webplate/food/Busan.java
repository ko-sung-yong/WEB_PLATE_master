package net.webplate.food;


import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.*;
import org.json.simple.parser.JSONParser;

import net.webplate.vo.FoodVO;

import java.io.BufferedReader;
import java.io.IOException;

public class Busan {
    public static void main(String[] args) throws IOException {
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/6260000/BusanTblFnrstrnStusService/getTblFnrstrnStusInfo"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=WZBWWUz20zYgzl3HeuXW1dKiMRMeTTkH2Ak8ssfM%2BJew2%2FbOP5mr5qwRntUWbHnghtJfz6WMjW9%2BXTDGdW9qcA%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("32", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("resultType","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*JSON방식으로 호출 시 파라미터 resultType=json 입력*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
        
        
        FoodVO vo=new FoodVO();
       
        
       try { 
        JSONParser parser	= new JSONParser(); 
		 JSONObject obj 		= (JSONObject)parser.parse(sb.toString());
		 JSONObject body 	= (JSONObject)obj.get("getTblFnrstrnStusInfo");
		 JSONObject items 	= (JSONObject)body.get("header");
		 JSONArray  item 	= (JSONArray) body.get("item");
		 System.out.println("JSON(obj) : " + obj);
		 System.out.println("JSON(body) : " + body);
		 System.out.println("JSON(items) : " + items);
		 System.out.println("JSON(item[]) : " + item);
		 
		 
		 for(int i=2;i<item.size();i++) {
			 Insert_food food=new Insert_food();
			 JSONObject BusanData=(JSONObject) item.get(i);
			 

			 String bsnsCond =(String)BusanData.get("bsnsCond").toString();  //업태
			 if(bsnsCond.equals("경양식")) {
                 bsnsCond="일식";
             }else if(bsnsCond.equals("회집")) {
                 bsnsCond="일식";
             }else if(bsnsCond.equals("탕류(보신용)")) {
                 bsnsCond="한식";
             }else if(bsnsCond.equals("식육(숯불구이)")) {
                 bsnsCond="한식";
             }else if(bsnsCond.equals("중국식")) {
                 bsnsCond="중식";
             }
			 String bsnsNm =(String)BusanData.get("bsnsNm").toString();  //업소명
			 String menu =(String)BusanData.get("menu").toString();  //메뉴	
			 String addrRoad =(String)BusanData.get("addrRoad").toString();  // 도로명
			 String tel =(String)BusanData.get("tel").toString();  //전화번호	
			 String lat =(String)BusanData.get("lat").toString();  //위도
			 String lng =(String)BusanData.get("lng").toString();  //경도		 
				
			 vo.setBsnscond(bsnsCond);
			 vo.setBsnsnm(bsnsNm);
			 vo.setMenu(menu);
			 vo.setAddr(addrRoad);
			 vo.setTel(tel);
			 vo.setLat(lat);
			 vo.setLng(lng);
			 
			 food.save(vo);
			 			 
			 System.out.println("업태: "+bsnsCond+ "업소명: "+ bsnsNm+ "메뉴 :"+ menu+ "도로명:" + addrRoad+"전화번호:"+tel+"위도:"+lat+"경도:"+lng);
			 
		 }

       } catch(Exception e) {
    	   e.printStackTrace();
       }
    }
}