package com.aidaL.util;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class NowTime {

	public Date getNowDate() {
		Date dt = new Date();// 如果不需要格式,可直接用dt,dt就是当前系统时间
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");// 设置显示格式
		String nowTime = df.format(dt);
		Date date = new Date(nowTime);
		return date;
	}
}
