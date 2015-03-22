package tool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
 









import javax.crypto.spec.PSource;import javax.xml.bind.ParseConversionEvent;
  
public class sqlhelper {
 private static Connection ct=null;
 private static ResultSet rs=null;
 private static PreparedStatement ps=null;
 public static void executeupdate(String sql,String []  paras) throws ClassNotFoundException{
		 try {
			// System.out.print("ufuqwf");
			Class.forName("com.mysql.jdbc.Driver");
			ct = DriverManager.getConnection("jdbc:mysql://localhost:3306/my1?useUnicode=true&characterEncoding=utf-8","root","wangbo");
			ps = ct.prepareStatement(sql);
			if(paras!=null){
				for(int i=0;i<paras.length;i++){
					ps.setObject(i+1, paras[i]);
				}
			}
			ps.executeUpdate();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
	e.printStackTrace();
		throw new RuntimeException(e.getMessage());
	}
	 
	 finally{
		// close.close(rs, ps, ct);
	 }
     
 }
   public  static ResultSet executeQuery(String sql,String paras[]){
	   
       try{ 
    	   Class.forName("com.mysql.jdbc.Driver");
    	 ct = DriverManager.getConnection("jdbc:mysql://localhost:3306/my1?useUnicode=true&characterEncoding=utf-8","root","wangbo");
        ps = ct.prepareStatement(sql); 
        if(paras!=null&&!paras.equals("")){
        for(int i=0;i<paras.length;i++){ 
        		ps.setString(i+1,paras[i]);
        }}
       System.out.print(sql);
        rs=ps.executeQuery();
       // ResultSetMetaData rsmd=rs.getMetaData();   
       }catch(Exception e){
         e.printStackTrace();
         throw new RuntimeException(e.getMessage());
     }finally{
    	 /*if(rs!=null){
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(ps!=null){
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(ct!=null){
				try {
					ct.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
     }*/}
	return rs;
   
}
//public static void executeupdate(String sql, String[] paras) {
	// TODO Auto-generated method stub
	
}
