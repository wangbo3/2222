package cintral;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.wordservice;
import tool.word;

public class wordcl extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			String age = request.getParameter("age");
			boolean sex =request.getParameter("sex")=="1"?true:false;
			String word =request.getParameter("word");
			word word1 = new word();
			word1.setName(name);
		//	System.out.print(name);
			word1.setAge(age);
			word1.setSex(sex);
			word1.setWord(word);

			if(service.wordservice.addword(word1)){
				request.setAttribute("info","Ìí¼Ó³É¹¦");
				request.getRequestDispatcher("/ok.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("/err.jsp").forward(request, response);
			}
			}
		
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
