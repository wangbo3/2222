package cintral;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.bookservice;

public class bookcl extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		String brief = null;
		boolean isdel=true;
		tool.book book = new tool.book();
		book.setTitle(title);
		book.setBody(body);
		book.setBrief(null);
		book.setIsdel(isdel);
		if(service.bookservice.addbook(book)){
			request.setAttribute("info","Ìí¼Ó³É¹¦");
			request.getRequestDispatcher("/ok.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/err.jsp").forward(request, response);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	
	}

}
