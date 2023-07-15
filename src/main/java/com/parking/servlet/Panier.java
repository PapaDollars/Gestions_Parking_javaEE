package com.parking.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.parking.beans.CrudeReservez;

/**
 * Servlet implementation class Panier
 */
@WebServlet("/Panier")
public class Panier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Panier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CrudeReservez crud = new CrudeReservez();
		
		request.setAttribute("parking", crud.recupererReservezs());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/panier.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CrudeReservez crud = new CrudeReservez();
		
		request.setAttribute("parking", crud.recupererReservezs());
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/panier.jsp").forward(request, response);
		
	}

}
