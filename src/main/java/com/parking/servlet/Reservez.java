package com.parking.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.parking.beans.CrudParking;
import com.parking.beans.CrudeReservez;
import com.parking.beans.Reservezs;


@WebServlet("/Reservez")
public class Reservez extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reservez() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CrudeReservez crud = new CrudeReservez();
		CrudParking crud_ = new CrudParking();
		
		request.setAttribute("parking", crud.recupererReservezs());
		request.setAttribute("pk", crud_.recupererParkings());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/reservez.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Reservezs reservez = new Reservezs();
		reservez.setNom_conducteur(request.getParameter("nom_conducteur"));
        reservez.setPhone_conducteur(request.getParameter("phone_conducteur"));
        reservez.setCode_parking(request.getParameter("code_parking"));
        reservez.setVehicule(request.getParameter("vehicule"));
        reservez.setDate_entre(request.getParameter("date_entre"));
        reservez.setHeure_entre(request.getParameter("heure_entre"));
        reservez.setTarif(request.getParameter("tarif"));
        
		CrudeReservez crud = new CrudeReservez();
		CrudParking crud_ = new CrudParking();
		try {
			crud.ajouterReservez(reservez);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("parking", crud.recupererReservezs());
		request.setAttribute("pk", crud_.recupererParkings());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/reservez.jsp").forward(request, response);
		
	}

}
