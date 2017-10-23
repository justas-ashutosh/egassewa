package Product_Test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Product_Handeller
 */
@WebServlet("/Product_Handeller")
public class Product_Handeller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		if(request.getParameter("add")!=null)
		{
			int pid=Integer.parseInt(request.getParameter("pid"));
			String pdis=request.getParameter("pdis");
			String pimg=request.getParameter("pimg");
			int price=Integer.parseInt(request.getParameter("price"));
			String pname=request.getParameter("pname");
			Product_pojo pojo=new Product_pojo();
			pojo.setPdis(pdis);
			pojo.setPid(pid);
			pojo.setPimg(pimg);
			pojo.setPrice(price);
			pojo.setPname(pname);
			Product_Dao dao=new Product_Dao();
			if(dao.Insert(pojo)==1)
	        	{
				   out.println("<script type=\"text/javascript\">");
		     	   out.println("alert('Product Has Been Successfully Added TO DB!!!');");
		     	   out.println("location='Product_console/Add_Products.jsp';");
		     	   out.println("</script>");	
	        	}
		}
		if(request.getParameter("up")!=null)
		{
			int pid=Integer.parseInt(request.getParameter("pid"));
			String pimg=request.getParameter("pimg");
			String pname=request.getParameter("pname");
			int price=Integer.parseInt(request.getParameter("price"));
			Product_pojo pojo=new Product_pojo();
			pojo.setPid(pid);
			pojo.setPimg(pimg);
			pojo.setPrice(price);
			pojo.setPname(pname);
			Product_Dao dao1=new Product_Dao();
			if(dao1.Update(pojo)==1)
	        	{
				   out.println("<script type=\"text/javascript\">");
		     	   out.println("alert('Product Has Been Successfully Updated!!!');");
		     	   out.println("location='Product_console/Update_Product.jsp';");
		     	   out.println("</script>");	
	        	}

		}
		if(request.getParameter("del")!=null)
		{
			int pid=Integer.parseInt(request.getParameter("pid"));
			Product_pojo pojo=new Product_pojo();
			pojo.setPid(pid);
			Product_Dao dao2=new Product_Dao();
			if(dao2.delete(pojo)==1)
	        	{
				   out.println("<script type=\"text/javascript\">");
		     	   out.println("alert('Product Has Been Successfully Deleted!!!');");
		     	   out.println("location='Product_console/Delete_Product.jsp';");
		     	   out.println("</script>");	
	        	}
			
		}
		doGet(request, response);
	}

}
