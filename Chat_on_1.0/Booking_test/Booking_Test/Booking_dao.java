package Booking_Test;

import java.sql.SQLException;
import java.util.Date;
import java.util.Random;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import Test_Register.Connection_Dao;

public class Booking_dao extends Connection_Dao{

	PreparedStatement ps = null;
    Statement st = null;
    ResultSet rs = null;
    static Random rand = new Random();
    static int bid=rand.nextInt(50) + 1;
    public int Insert (Booking_pojo b)
    {
    
     Date date = new Date();
     String dat=date.toString();
 	 try {
 	 Connection con = null;	 
		 con = getConnection();
		 ps = (PreparedStatement) con.prepareStatement("Insert into booking values(?,?,?,?,?,?,?,?)");
      ps.setInt(1,bid);
	  ps.setString(2,b.getBuser());
	  ps.setString(3,b.getPno());
      ps.setString(4,b.getBadd());
      ps.setInt(5,b.getBquat());
      ps.setString(6,b.getNeed());
      ps.setInt(7,b.getBprice());
      ps.setString(8,dat);
      int i= ps.executeUpdate();
      bid++;
      return i; 
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
 	 return 0;
   }
    
    public int delete (Booking_pojo b)
    {
 	 try {
 	 Connection con = null;	 
 		 con = getConnection();
 		 ps = (PreparedStatement) con.prepareStatement("delete from booking where bid=?");
          ps.setInt(1,b.getBid());
      int i=ps.executeUpdate();
      return i; 
 		} catch (SQLException e1) {
 			e1.printStackTrace();
 		}
 	 return 0;
   }
}
