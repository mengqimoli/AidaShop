package com.aidaL.db;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.URL;
import java.net.URLConnection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.Map;

import net.sf.json.JSONObject;

public class TimeIPDB {

	/**
	 *  获取当前系统时间
	 * @return date 当前系统时间
	 */
	public String record() {
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(now);
		System.out.println("当前时间："+date);
		
		return date;
	}
	/**
	 * String转Date类型
	 * @param time String类型时间，格式为yyyy-MM-dd HH:mm:ss
	 * @return date Date类型时间
	 */
	public Date stringToDate(String time) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		try {
			date = sdf.parse(time);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return date;
	}
	
	/** 
	* 得到指定月后（前）的日期 参数传负数即可 
	*/  
	public String  getAfterMonth(int month) {  
        Calendar c = Calendar.getInstance();//获得一个日历的实例     
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");     
        Date date = new Date(); //获取当前时间   
        c.setTime(date);//设置日历时间     
        c.add(Calendar.MONTH,month);//在日历的月份上增加month个月     
        String strDate = sdf.format(c.getTime());//的到你想要得month个月后的日期     
        System.out.println("after time:"+strDate);
        return strDate;  
	} 
	
	//判断是否为windows平台
	public boolean isWindowsOS(){
	    boolean isWindowsOS = false;
	    String osName = System.getProperty("os.name");
	    if(osName.toLowerCase().indexOf("windows")>-1){
	     isWindowsOS = true;
	    }
	    System.out.println("当前平台："+osName);
	    return isWindowsOS;
	 }
	
	/**
	 *  获取客户机IP
	 * @return 客户机IP
	 */
	public String getLocalIP(){
		String sIP = "";
		InetAddress ip = null; 
		try {
			//如果是Windows操作系统
			if(isWindowsOS()){
				ip = InetAddress.getLocalHost();
			}
			//如果是Linux操作系统
			else{
				boolean bFindIP = false;
				Enumeration<NetworkInterface> netInterfaces = (Enumeration<NetworkInterface>) NetworkInterface.getNetworkInterfaces();
				while (netInterfaces.hasMoreElements()) {
					if(bFindIP){
						break;
					}
					NetworkInterface ni = (NetworkInterface) netInterfaces.nextElement();
					//----------特定情况，可以考虑用ni.getName判断
					//遍历所有ip
					Enumeration<InetAddress> ips = ni.getInetAddresses();
					while (ips.hasMoreElements()) {
						ip = (InetAddress) ips.nextElement();
						if( ip.isSiteLocalAddress() 
								&& !ip.isLoopbackAddress()   //127.开头的都是lookback地址
								&& ip.getHostAddress().indexOf(":")==-1){
							bFindIP = true;
							break;  
						}
					}
		
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
	    }
	
	    if(null != ip){
	    	sIP = ip.getHostAddress();
	    }
	    System.out.println("IP:"+sIP);
	    return sIP;
	}
	
	/**
	 * 获取IP地址所在地
	 * @param ip 客户机IP
	 * @return IP地址所在地 区-市-省
	 */
	public String getAdress(String ip) {
		 String add = null;
		try {
		    //URL U = new URL("http://ip.taobao.com/service/getIpInfo.php?ip=114.111.166.72");
		    URL U = new URL("http://ip.taobao.com/service/getIpInfo.php?ip="+ip);
		    URLConnection connection = U.openConnection();  
		    connection.connect();
		    BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));  
		    String result = "";
		    String line;
		    while ((line = in.readLine())!= null){  
		        result += line;  
		    }
		    in.close(); 
		    JSONObject jsonObject = JSONObject.fromObject(result);  
		    @SuppressWarnings({ "unchecked", "rawtypes" })
			Map<String, Object> map = (Map) jsonObject;
		    String code = String.valueOf(map.get("code"));//0：成功，1：失败。
		    if("1".equals(code)){//失败
		        add = String.valueOf(map.get("data"));//错误信息
		    }else if("0".equals(code)){//成功
		        @SuppressWarnings("unchecked")
				Map<String, Object> data = (Map<String, Object>) map.get("data");
		
//			        String country = String.valueOf(data.get("country"));//国家
//			        String area = String.valueOf(data.get("area"));//
		        String city = String.valueOf(data.get("city"));//省（自治区或直辖市）
		        String region = String.valueOf(data.get("region"));//市（县）
		        String county = String.valueOf(data.get("county"));
		        add = county+"-"+city+"-"+region;
		    }
		} catch (MalformedURLException e1) {
		    e1.printStackTrace();
		} catch (IOException e) {
		    e.printStackTrace();
		}    

		return add;
	}
}
