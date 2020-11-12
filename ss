package com.tjoeun;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JspTest
 */
@WebServlet("/ss")
public class javaweb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public javaweb() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String sDan = request.getParameter("dan");  
		int dan = Integer.parseInt(sDan);
		String msg = " ";
		for(int i=1; i <=9; i++) {
			msg += dan + " * " + i + " = " + (dan*i) + "<br>";
		}
		
	
		//지금 보내는건 HTML이야 라는뜻
		response.setContentType("text/html;charset=utf-8");
		String html = "";
		
		
		html +="<?doctype html>";
		html +="<html><head>";
		html +="<meta charset='utf-8'>";
		html +="<style>";
		html +="#c {color:red;}";
		html +="</style>";
		html +="<title></title><script src='https://code.jquery.com/jquery-3.5.1.min.js'></script></head><body>";
		html +="<h1>구구단 한번 볼래?</h1>";
	    html +="<p id='c'>";
		html +=msg;
		html +="</p>";
		html +="</div><div>";
		html +="<a href='ss?dan=2'>2단보기</a>";
		html +="</div><div>";
		html +="<a href='ss?dan=3'>3단보기</a>";
		html +="</div><div>";
		html +="<a href='ss?dan=4'>4단보기</a>";
		html +="</div><div>";
		html +="<a href='ss?dan=5'>5단보기</a>";
		html +="</div><div>";
		html +="<a href='ss?dan=6'>6단보기</a>";
		html +="</div><div>";
		html +="<a href='ss?dan=7'>7단보기</a>";
		html +="</div><div>";
		html +="<a href='ss?dan=8'>8단보기</a>";
		html +="</div><div>";
		html +="<a href='ss?dan=9'>9단보기</a>";
		html +="</div>";
		html += "<p> <a id='b' href='ss?dan=7'>7단보기</a></p>";
		html += "<p> <input id='dan' type='range' min='2' max='9' value='2' oninput='sliderInput();'></p>";
		html +="</body>";
		html +="<script>";
		html += "function sliderInput() {";
		html += "var v = $('#dan').val();";
		html += "$('#b').text(v+'단보기');";
		html += "$('#b').attr('href','ss?dan='+v);";
		html += "}";
		html +="</script>";
		html +="</html>";
		PrintWriter out = response.getWriter();
		out.println(html);
	}
		
//		Integer sDan = Integer.parseInt(request.getParameter("Dan"));
//		
//		for(int i=1; i <=9; i++) {
//			response.getWriter().println(sDan+" X "+i+" = "+(sDan*i)+ "<br>");
//			PrintWriter out = response.getWriter();
//			out.println(msg);
//		}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
