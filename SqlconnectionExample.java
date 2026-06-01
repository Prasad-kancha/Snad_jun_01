package JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class SqlconnectionExample {
  public static void main(String[] args) throws SQLException {
	try {
		Class.forName("org.postgresql.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/Student","postgres","Snad@123");
		
		Statement st=con.createStatement();
		String query=""" 
				
				        create table employee (
                        id int primary key,
                        name varchar(50),
                        salary double precision
                        )
                        """;
		st.executeUpdate(query);
		
		System.out.println("table created");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
