package main;


import java.util.List;

import dao.PhoneDao;
import entity.Phone;

public class Main {

	public static void main(String[] args) {
		try {
			PhoneDao phoneDao = new PhoneDao();
			List<Phone> phones = phoneDao.getAllPhone();
			System.out.println(phones.toString());
//			Phone phone = new Phone();
//			phone.setId(0);
//			phone.setTradeMark("Sony");
//			phone.setName("Z5 Premium");
//			PhoneDao phoneDao = new PhoneDao();
//			phoneDao.savePhone(phone);
//			System.out.println(phone);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
