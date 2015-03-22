package service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import tool.book;
import tool.sqlhelper;

public class bookservice {
	public static boolean addbook(book book){
		boolean b=true;
		String sql ="insert into ac values("+null+",?,?,?,1)";
		
		String paras[] ={book.getTitle(),book.getBody()+"",book.getBrief()};
		for (int i = 0; i < paras.length; i++) {
			System.out.print(paras[i]);
		}
		try {
			sqlhelper.executeupdate(sql, paras);
		} catch (Exception e) {
			// TODO: handle exception
			b=false;
		}
		
		return b;
	}
	public ArrayList getbook() throws SQLException{
		ArrayList<book> al = new ArrayList<book>();
		String sql = "select * from ac";
		ResultSet rs=sqlhelper.executeQuery(sql, null);
		while(rs.next()){
			book book = new book();
			book.setId(rs.getInt(1));
			book.setTitle(rs.getString(2));
			book.setBody(rs.getString(3));
			book.setBrief(rs.getString(4));
			book.setIsdel(true);
			al.add(book);
		}
		return al ;
		
	}

}