package com.parking.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.parking.beans.CrudParking;
import com.parking.beans.Parking;

/**
 * Servlet implementation class SupprimerParking
 */
@WebServlet("/SupprimerParking")
public class SupprimerParking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupprimerParking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CrudParking crud = new CrudParking();
		request.setAttribute("parking", crud.recupererParkings());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/supprimerParking.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Parking parking = new Parking();
		parking.setCode_parking(request.getParameter("code_parking"));
		
		CrudParking crud = new CrudParking();
		crud.supprimerParking(parking,request);
		request.setAttribute("parking", crud.recupererParkings());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/supprimerParking.jsp").forward(request, response);
		
	}

}
