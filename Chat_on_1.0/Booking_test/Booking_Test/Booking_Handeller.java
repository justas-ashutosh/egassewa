package Booking_Test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Booking_Handeller
 */
@WebServlet("/Booking_Handeller")
public class Booking_Handeller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out = response.getWriter();
			if(request.getParameter("in")!=null)
			{
				int total=0;
				String pno=request.getParameter("pno");
				String buser=request.getParameter("buser");
				System.out.println(buser);
				String badd=request.getParameter("badd");
				int bquat=Integer.parseInt(request.getParameter("bquat"));
				String need=request.getParameter("need");
				Booking_pojo pojo=new Booking_pojo();
				pojo.setBadd(badd);
				pojo.setBquat(bquat);
				pojo.setBuser(buser);
				pojo.setNeed(need);
				if(need.equals("Domestic")){
					total=bquat*100;
					pojo.setBprice(total);
				}
				if(need.equals("Industrial Use")){
					total=bquat*500;
					pojo.setBprice(total);
				}
				if(need.equals("Other")){
					total=bquat*1000;
					pojo.setBprice(total);
				}
				if(need.equals("Academic")){
					total=bquat*50;
					pojo.setBprice(total);
				}
				if(need.equals("Scientific")){
					total=bquat*250;
					pojo.setBprice(total);
				}
				pojo.setPno(pno);
				Booking_dao dao=new Booking_dao();
				if(dao.Insert(pojo)==1);
					{
						   out.println("<script type=\"text/javascript\">");
				     	   out.println("alert('Booking Has Been Successfully Done!!!');");
				     	   out.println("location='payment.jsp';");
				     	   out.println("</script>");
						
					}
			}
			
			if(request.getParameter("del")!=null){
				
				int bid=Integer.parseInt(request.getParameter("bid"));
				Booking_pojo pojo=new Booking_pojo();
				pojo.setBid(bid);
				Booking_dao dao=new Booking_dao();
				if(dao.delete(pojo)==1);
					{
						   out.println("<script type=\"text/javascript\">");
				     	   out.println("alert('Booking Has Been Successfully Canceled!!!');");
				     	   out.println("location='Cancel.jsp';");
				     	   out.println("</script>");
						
					}
				
			}
		doGet(request, response);
	}

}
