package com.kh.planA.myRoute.model.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

import com.kh.planA.myRoute.model.dao.MyRouteDAO;
import com.kh.planA.myRoute.model.vo.AirportCode;
import com.kh.planA.myRoute.model.vo.City;
import com.kh.planA.myRoute.model.vo.MyRoute;
import com.kh.planA.myRoute.model.vo.RoutePlan;
import com.kh.planA.myRoute.model.vo.RouteResult;

@Service("mrService")
public class MyRouteService {
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private MyRouteDAO mrDAO;
	
	public City myPlan(RoutePlan rp) {
		System.out.println("서비스 rp" + rp);
		City city = mrDAO.myPlan(sqlSession,rp);
		System.out.println("서비스"+city);
		return city;
	}

	public List<AirportCode> EntranceAPI(City city, RoutePlan rp) {
//		입국 API시작
		try {
			List<AirportCode> airportCodeList = null;
	    	//인증키
	    	
	        String serviceKey = "tS0UTM78zLsW7Jgn68V8htCkNpJqZbOoQ8qutMfi8WMhb9k3xD8HUiJLTCB8%2BWfV6uJCV1K4fj7ytiQT8bTLGQ%3D%3D";
	        StringBuilder urlBuilder = new StringBuilder("http://openapi.airport.kr/openapi/service/StatusOfPassengerFlightsDS/getPassengerArrivalsDS"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "="+serviceKey); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("airport_code","UTF-8") + "=" + URLEncoder.encode(city.getCityNum(), "UTF-8")); /*공항코드*/
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        conn.setRequestProperty("Accept", "application/xml");
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
	        
	        XmlPullParserFactory factory = XmlPullParserFactory.newInstance(); // 객채생성 풀파서는 만드는 공장
	        XmlPullParser parser = factory.newPullParser(); // 파서 생성
	        
	        parser.setInput(new StringReader(sb.toString())); // 파서에 데이터를 넣는다
	        int eventType = parser.getEventType(); // 이벤트 
	        
	        AirportCode ac = null; // 에어포트 객체
	        while(eventType != XmlPullParser.END_DOCUMENT) {//문서가 끝날때 까지 반복
	            switch(eventType) {
	               case XmlPullParser.START_DOCUMENT: // 문서시작
	   //               System.out.println("start");
	                  airportCodeList = new ArrayList<AirportCode>(); // 문서시작이면 어레이리스트 생성
	                  break;
	               case XmlPullParser.END_DOCUMENT: // 
	   //               System.out.println("end");
	                  break;
	               case XmlPullParser.START_TAG: 
	   //               System.out.println(parser.getName());
	                  if(parser.getName().equals("item")) {
	                     ac = new AirportCode();
	                  }
	                  if(parser.getName().equals("airline") && ac!=null) {
	                     ac.setAirline(parser.nextText());
	                  }else if(parser.getName().equals("estimatedDateTime") && ac!=null) {
	                	  ac.setEstimatedDateTime(parser.nextText());
	                  }else if(parser.getName().equals("airport") && ac!=null) {
	                     ac.setAirport(parser.nextText());
	                  }else if(parser.getName().equals("airportcode") && ac!=null) {
	                      ac.setAirportcode(parser.nextText());
	                   }
	                  break;
	               case XmlPullParser.END_TAG:
	                  if(parser.getName().equalsIgnoreCase("item") && ac != null) {
	                	  String estimatedDateTime = ac.getEstimatedDateTime();
	                	  String endDate = estimatedDateTime.substring(0,4)+"-"
	                			  +estimatedDateTime.substring(4,6)+"-"
	                			  +estimatedDateTime.substring(6,8);
	//                	  if(rp.getEndDate().equals(ac2.getEstimatedDateTime())) {
	                		  if(endDate.equals(rp.getEndDate())) {
	                			ac.setEstimatedDateTime(endDate);
	                			ac.setFlyTime(estimatedDateTime.substring(8,10)+":"+estimatedDateTime.substring(10,12));
	                			  airportCodeList.add(ac);
	                		  }
	                	  	  
	//                		  System.out.println("ac2 : "+ac2.getEstimatedDateTime());
	//                		  System.out.println("rp : "+rp.getEndDate());
	//                		  System.out.println(ac2.getEstimatedDateTime().equals(rp.getEndDate()));
	                		  
	//                	  }
	                     
	   //                  System.out.println(ac);
	                     ac = null;
	                  }
	                  break;
	            }
	            eventType = parser.next();
	        }
	        for(AirportCode a : airportCodeList) {
	        	System.out.println("입국 :"+a);
	        } return airportCodeList;
		}catch(Exception e) {
		}
		return null;
		
	}

	public List<AirportCode> DepranceAPI(City city, RoutePlan rp) {
		try {

//			출국 API시작
			List<AirportCode> airportCodeList = null;
	    	//인증키
	    	
	        String serviceKey = "tS0UTM78zLsW7Jgn68V8htCkNpJqZbOoQ8qutMfi8WMhb9k3xD8HUiJLTCB8%2BWfV6uJCV1K4fj7ytiQT8bTLGQ%3D%3D";
	        StringBuilder urlBuilder = new StringBuilder("http://openapi.airport.kr/openapi/service/StatusOfPassengerFlightsDS/getPassengerDeparturesDS"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "="+serviceKey); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("airport_code","UTF-8") + "=" + URLEncoder.encode(city.getCityNum(), "UTF-8")); /*공항코드*/
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        conn.setRequestProperty("Accept", "application/xml");
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
	        
	        XmlPullParserFactory factory = XmlPullParserFactory.newInstance(); // 객채생성 풀파서는 만드는 공장
	        XmlPullParser parser = factory.newPullParser(); // 파서 생성
	        
	        parser.setInput(new StringReader(sb.toString())); // 파서에 데이터를 넣는다
	        int eventType = parser.getEventType(); // 이벤트 
	        
	        AirportCode ac = null; // 에어포트2 객체
	        
	        while(eventType != XmlPullParser.END_DOCUMENT) {//문서가 끝날때 까지 반복
	            switch(eventType) {
	               case XmlPullParser.START_DOCUMENT: // 문서시작
	   //               System.out.println("start");
	                  airportCodeList = new ArrayList<AirportCode>(); // 문서시작이면 어레이리스트 생성
	                  break;
	               case XmlPullParser.END_DOCUMENT: // 
	   //               System.out.println("end");
	                  break;
	               case XmlPullParser.START_TAG: 
	   //               System.out.println(parser.getName());
	                  if(parser.getName().equals("item")) {
	                     ac = new AirportCode();
	                  }
	                  if(parser.getName().equals("airline") && ac!=null) {
	                     ac.setAirline(parser.nextText());
	                  }else if(parser.getName().equals("estimatedDateTime") && ac!=null) {
//	                	  String estimatedDateTime = parser.nextText();
//	                	  String endDate = estimatedDateTime.substring(0,4)+"-"
//	                			  		+estimatedDateTime.substring(4,6)+"-"
//	                			  		+estimatedDateTime.substring(6,8);
//	                     ac2.setEstimatedDateTime(endDate);
	                	  ac.setEstimatedDateTime(parser.nextText());
	                  }else if(parser.getName().equals("airport") && ac!=null) {
	                     ac.setAirport(parser.nextText());
	                  }else if(parser.getName().equals("airportcode") && ac!=null) {
	                      ac.setAirportcode(parser.nextText());
	                   }
	                  break;
	               case XmlPullParser.END_TAG:
	                  if(parser.getName().equalsIgnoreCase("item") && ac != null) {
	                	  String estimatedDateTime = ac.getEstimatedDateTime();
	                	  String endDate = estimatedDateTime.substring(0,4)+"-"
	                			  +estimatedDateTime.substring(4,6)+"-"
	                			  +estimatedDateTime.substring(6,8);
//	                	  if(rp.getEndDate().equals(ac2.getEstimatedDateTime())) {
	                		  if(endDate.equals(rp.getStartDate())) {
	                			ac.setEstimatedDateTime(endDate);
	                			ac.setFlyTime(estimatedDateTime.substring(8,10)+":"+estimatedDateTime.substring(10,12));
	                			  airportCodeList.add(ac);
	                		  }
	                	  	  
//	                		  System.out.println("ac2 : "+ac2.getEstimatedDateTime());
//	                		  System.out.println("rp : "+rp.getEndDate());
//	                		  System.out.println(ac2.getEstimatedDateTime().equals(rp.getEndDate()));
	                		  
//	                	  }
	                     
	   //                  System.out.println(ac);
	                     ac = null;
	                  }
	                  break;
	            }
	            eventType = parser.next();
	        }
	        for(AirportCode a : airportCodeList) {
	        	System.out.println("출국 :"+a);
	        } return airportCodeList;
		}catch(Exception e) {
			return null;
		}
		
	}

	public RouteResult RetueResult(MyRoute myRoute) {
		
		RouteResult RouteResult = mrDAO.RetueResult(sqlSession, myRoute);
		
		return RouteResult;
	}

	// 마이페이지 지도 값 가져오기
	   public ArrayList<RouteResult> myHistory(String userId) {
		  System.out.println();
	      System.out.println("=== 지도 값 가져오기 ===");
	      System.out.println("Service에 userId : " + userId + " 가 도착!");
	      return mrDAO.myHistory(sqlSession, userId);
	   }
    
	
}
