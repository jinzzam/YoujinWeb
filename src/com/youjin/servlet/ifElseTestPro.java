package com.youjin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ifElseTestPro
 */
@WebServlet("/ifElseTestPro")
public class ifElseTestPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ifElseTestPro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request 와 response 둘다 utf-8로 바꾸어주어야한다
		//getwriter 전에 바꾸어주어야함!!!
		//만들고 난 뒤에 바꿔줘도 소용 없음 !!
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding(request.getCharacterEncoding());
		PrintWriter out = response.getWriter();
		String upper = "<!DOCTYPE html>"
				+ "<html>"
				+ "<head>"
				+ "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">"
				+ "<title>Insert title here</title>"
				+ "</head>"
				+ "<body>";
		String lower = "</body>"
				+ "</html>";
		out.println(upper);
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		if(age >= 20) {
			out.println("<b>" + name + "</b>" + "님의 나이는 20세 이상입니다.");
			System.out.println("<b>" + name + "</b>" + "님의 나이는 20세 이상입니다.");
		}else {
			out.println("<b>" + name + "</b>" + "님은 미성년입니다.");
			System.out.println("<b>" + name + "</b>" + "님의 나이는 20세 이상입니다.");
		}
		out.println(lower);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
