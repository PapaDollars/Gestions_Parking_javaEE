package com.parking.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.parking.beans.CrudParking;
import com.parking.beans.Parking;

/**
 * Servlet implementation class ModifierParking
 */
@WebServlet("/ModifierParking")
public class ModifierParking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	int id_etudiant=0;
	
    public ModifierParking() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
//		int num = 0;
		try {
			CrudParking crud_ = new CrudParking(); 
//			Parking p = null;
			
			String id =""; int num = 0;
			try {
			    id= request.getParameter("id_parking");
			     num = Integer.parseInt(id);
			     id_etudiant = num;
			} catch (NumberFormatException e) {
			    System.out.println("La valeur fournie n'est pas convertible en Integer");
			}
			 
			 Parking p = null;
			 Parking parking = new Parking();
			 parking.setId_parking(num);
			try {
				p = crud_.selectionnerUnParking(num);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		     
		     
		     
		     CrudParking crud = new CrudParking();
		     request.setAttribute("parking", crud.recupererParkings());
		     request.setAttribute("p", p);
		     
		} catch (NumberFormatException e) {
		    System.out.println("La valeur fournie n'est pas convertible en Integer");
		}
		
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/modifierParking.jsp").forward(request, response);
		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CrudParking crud_ = new CrudParking();
		try {
			String id =""; int num = 0;
			try {
			    id= request.getParameter("id_parking");
			     num = Integer.parseInt(id);
			     id_etudiant = num;
			} catch (NumberFormatException e) {
			    System.out.println("La valeur fournie n'est pas convertible en Integer");
			}
			 
			 Parking p = null;
			 Parking parking = new Parking();
			 parking.setId_parking(num);
			try {
				p = crud_.selectionnerUnParking(num);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		     
			 parking.setNom_parking(request.getParameter("nom_parking"));
			 parking.setCode_parking(request.getParameter("code_parking"));
			 parking.setType(request.getParameter("type"));
			 
			 CrudParking crud = new CrudParking();
			 crud.modifierParking(parking,request);
			 request.setAttribute("parking", crud.recupererParkings());
			 request.setAttribute("p", p);
			 
		} catch (NumberFormatException e) {
		    System.out.println("La valeur fournie n'est pas convertible en Integer // servlet modifier parking doPost");
		}
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/modifierParking.jsp").forward(request, response);
		
	}

}
