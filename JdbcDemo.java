package JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//import java.sql.Statement;
//
public class JdbcDemo {
    public static void main(String[] args) throws SQLException {
//	 try {
//		Class.forName("org.postgresql.Driver");
//		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/Student","postgres","Snad@123");
//		Statement st=con.createStatement();
//		st.executeUpdate("create table student(id int,name varchar(50),marks varchar(50),branch varchar(50)) ");
//		System.out.println("table created successfully");
//		st.close();
//		con.close();
//	 } catch (ClassNotFoundException e) {
//		 
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	 }
    	
    	
    	
		try {
			Class.forName("org.postgresql.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/Student","postgres","Snad@123");
			PreparedStatement sp=con.prepareStatement("insert into Student values(?,?,?,?)");
			sp.setInt(1,1);
			sp.setString(2, "prasad");
			sp.setInt(3, 50);
			sp.setString(4, "cse");
			sp.executeUpdate();
			System.out.println("inserted successfully");
			
			sp.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}



