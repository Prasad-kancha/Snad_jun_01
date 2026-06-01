package JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Loginvalidation {
   public static void main(String[] args) throws SQLException {
	   Scanner sc=new Scanner(System.in);
	   
	   System.out.println("enter the name");
	   String uname=sc.nextLine();
	   
	   System.out.println("enter the password");
	   String pass=sc.nextLine();
	   
	
	   try {
		Class.forName("org.postgresql.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/Student","postgres","Snad@123");
		
		
		String query="select * from Users where uname=? and pass=?";
		
		PreparedStatement ps=con.prepareStatement(query);
		
		ps.setString(1, uname);
		ps.setString(2, pass);
		
		ResultSet rs=ps.executeQuery();
		
		if(rs.next()) {
			System.out.println("login successfull");
		}else {
			System.out.println("invalid credemtials");
		}
		ps.close();
		con.close();
	   } catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	   }
	   sc.close();
   } 
}
