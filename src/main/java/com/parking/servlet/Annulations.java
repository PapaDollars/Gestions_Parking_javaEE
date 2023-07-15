package com.parking.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.parking.beans.CrudeReservez;
import com.parking.beans.Reservezs;

/**
 * Servlet implementation class Annulations
 */
@WebServlet("/Annulations")
public class Annulations extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	int id_etudiant=0;
	
    public Annulations() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CrudeReservez crud = new CrudeReservez();
		request.setAttribute("parking", crud.recupererReservezs());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/annulations.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id =""; int num = 0;	
		try {
		    id= request.getParameter("id_reservez");
		     num = Integer.parseInt(id);
		     id_etudiant = num;
		} catch (NumberFormatException e) {
		    System.out.println("La valeur fournie n'est pas convertible en Integer");
		}
		 
		 Reservezs p = null;
		 CrudeReservez  crud_ = new CrudeReservez();
		 Reservezs reservez = new Reservezs();
		 reservez.setId_reservez(num);
		try {
			p = crud_.selectionnerUneReservation(num);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		CrudeReservez crud = new CrudeReservez();
		crud.supprimerReservez(reservez);
		request.setAttribute("parking", crud.recupererReservezs());
		request.setAttribute("p", p);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/annulations.jsp").forward(request, response);
		
	}

}
