package service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import tool.sqlhelper;
import tool.word;

public  class wordservice {
	
	tool.word word = new tool.word();
	public static boolean addword(tool.word word){
		boolean b=true;
		String sql ="insert into word values("+null+",?,?,"+word.isSex()+",?)";
		String paras []={word.getName(),word.getAge(),word.getWord()};
		try {
			sqlhelper.executeupdate(sql, paras);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			b=false;
		}
		return b;
	}
	public ArrayList<word> getword() throws SQLException{
		ArrayList<word> al =new ArrayList<word>();
		String sql ="select * from word";
		ResultSet rs=sqlhelper.executeQuery(sql, null);
		while (rs.next()) {
			word word = new word();
			word.setId(rs.getInt(1));
			word.setName(rs.getString(2));
			word.setAge(rs.getString(3));
			word.setSex(rs.getBoolean(4));
			word.setWord(rs.getString(5));
			al.add(word);
		}
		return al;
	}
}
 