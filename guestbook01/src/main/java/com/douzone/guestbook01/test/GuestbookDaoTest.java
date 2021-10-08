package com.douzone.guestbook01.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


import com.douzone.guestbook01.dao.GuestbookDao;
import com.douzone.guestbook01.vo.GuestbookVo;



public class GuestbookDaoTest {

	public static void main(String[] args) {
		insertTest();
		//findAllTest();
		//deleteTest(5);

	}

	private static void deleteTest(int no) {
		
		GuestbookDao dao = new GuestbookDao();
		//dao.delete(no);
		
	}

	private static void findAllTest() {
	
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
			
		}
		
	}

	private static void insertTest() {
		
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String formatedNow = formatter.format(now);
		
		GuestbookVo vo = new GuestbookVo();
		vo.setName("김민수");
		vo.setPassword("1234");
		vo.setMessage("하윙");
		vo.setReg_date(formatedNow);
		new GuestbookDao().insert(vo);
		
	}

}
