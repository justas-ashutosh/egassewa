package Product_Test;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import Test_Register.Connection_Dao;

public class Product_Dao extends Connection_Dao{

	PreparedStatement ps = null;
    Statement st = null;
    ResultSet rs = null;

    public int Insert (Product_pojo p)
    {
 	 try {
 	 Connection con = null;	 
		 con = getConnection();
		 ps = (PreparedStatement) con.prepareStatement("Insert into products values(?,?,?,?,?)");
      ps.setInt(1,p.getPid());
      ps.setString(2,p.getPname());
      ps.setString(3,p.getPdis());
      ps.setString(4,p.getPimg());
      ps.setInt(5,p.getPrice());
      int i= ps.executeUpdate();
      return i; 
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
 	 return 0;
   }
    
   public int Update (Product_pojo p)
    {
 	 try {
 	 Connection con = null;	 
		 con = getConnection();
		 ps = (PreparedStatement) con.prepareStatement("Update products set pname=? , pimg=? , price=? where pid=?");
      ps.setString(1,p.getPname());
      ps.setString(2,p.getPimg());
      ps.setInt(3,p.getPrice());
      ps.setInt(4,p.getPid());
      int i=ps.executeUpdate();
      return i; 
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
 	 return 0;
   }
   
   public int delete (Product_pojo p)
   {
	 try {
	 Connection con = null;	 
		 con = getConnection();
		 ps = (PreparedStatement) con.prepareStatement("delete from products where pid=?");
         ps.setInt(1,p.getPid());
     int i=ps.executeUpdate();
     return i; 
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	 return 0;
  }
}
