
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="">
		<%@include file="autres/header.jsp" %></div>	
		
		<div class="container-fluide m-4">
		<div class="row">
			<nav class="navbar navbar-expand-lg navbar-dark  bg-success">
			  <div class="container-fluid">
			    <div class="collapse navbar-collapse justify-content-evenly" id="navbarNavDarkDropdown">
			      <ul class="navbar-nav ">
			        <li class="nav-item dropdown p-2">
			          <a class="navbar-brand text-light" href="/Gestion_parking/reservez">Reservez</a>
			        </li>
			        <li class="nav-item dropdown p-2">
			          <a class="navbar-brand text-light"  href="/Gestion_parking/modifications">Modifications</a>
			        </li>
			        <li class="nav-item dropdown p-2">
			          <a class="navbar-brand text-light" href="/Gestion_parking/annulations">Annuler reservations</a>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>

        </div>
		<div class="row p-5" >
			
			<div class="col">
			
				<h3 class="text-success">Modifier Reservations</h3>
				
				
				<div class="mt-5 pt-5">
				
				
					<form method="post" action="modifications">
					<div class="form-group">
					      <input type="text" class="form-control" name="nom_conducteur" value="${p.nom_conducteur}" placeholder="Nom conducteur : abdel" required>
					   </div> <br>
					   <div class="form-group">
					      <input type="text" class="form-control" name="phone_conducteur" value="${p.phone_conducteur}" placeholder="Contact conducteur : 690989900" required>
					   </div> <br>
					    <div class="form-group">
						     <select class="form-select"  name="code_parking" aria-label="Default select example">
							  <optgroup label="Codes parking">
							  <option value="${p.code_parking}">${p.code_parking}</option>
							     <c:forEach var="pk"  items="${ pk }">
							     		
									  <option value="${ pk.id_parking }">
									  		<c:out value="${ pk.code_parking }" />
		
									  </option>
						        </c:forEach>
							  </optgroup>
							  
							</select>
					   </div> <br>
					   <div class="form-group">
					      		<select class="form-select" name="vehicule" size="4" aria-label="size 2 select example">
								  <option disabled  > Vehicules : </option>
								  <option value="Moto" >Moto</option>
								  <option value="Voiture" selected>Voiture</option>
								  <option value="Car">Car</option>
								  <option value="Van">Van</option>
								  <option value="Scooter">Scooter</option>
								  <option value=">Motorcycle">Motorcycle</option>
								</select>
					   </div> <br>
					   <div class="form-group">
					      <input type="text" class="form-control" name="date_entre" value="${p.date_entre}" placeholder="Date entree : 10/01/1201" required>
					   </div> <br>
					  <div class="form-group">
							   <select class="form-select" name="heure_entre" size="5" aria-label="size 3 select example">
								  <option disabled>Heure entree : </option>
								  <option value="${p.heure_entre}" selected>${p.heure_entre}</option>
								  <option value="05h30" >05h30</option>
								  <option value="06h00" >06h00</option>
								  <option value="06h30">06h30</option>
								  <option value="07h00">07h00</option>
								  <option value="07h30">07h30</option>
								  <option value="08h00">08h00</option>
								  <option value="08h30">08h30</option>
								  <option value="09h00">09h00</option>
								  <option value="09h30">09h30</option>
								  <option value="10h00">10h00</option>
								  <option value="10h30">10h30</option>
								  <option value="11h00">11h00</option>
								  <option value="11h30">11h30</option>
								  <option value="12h00">12h00</option>
								  <option value="12h30">12h30</option>
								  <option value="13h00">13h00</option>
								  <option value="13h30">13h30</option>
								  <option value="14h00">14h00</option>
								  <option value="14h30">14h30</option>
								  <option value="15h00">15h00</option>
								  <option value="15h30">15h30</option>
								  <option value="16h00">16h00</option>
								  <option value="16h30">16h30</option>
								  <option value="17h00">17h00</option>
								  <option value="17h30">17h30</option>
								  <option value="18h00">19h00</option>
								  <option value="18h30">18h30</option>
								  <option value="19h00">19h00</option>
								  <option value="19h30">19h30</option>
								  <option value="20h00">20h00</option>
								  <option value="20h30">20h30</option>
								  <option value="21h00">21h00</option>
								  <option value="21h30">21h30</option>
								  <option value="22h00">22h00</option>
								  <option value="22h30">22h30</option>
								  <option value="23h00">23h00</option>
								  <option value="23h30">23h30</option>
								  <option value="00h00">00h00</option>
								  <option value="00h30">00h30</option>
								</select>
					   </div> <br>
					   <div class="form-group">
					      <input type="text" class="form-control" name="tarif" value="${p.tarif}" placeholder="Tarifs (fcfa): 4000" required>
					   </div> <br>
					  <button type="button" class="btn btn-success bold-btn fs-5 mt-5 p-2 text-white" data-bs-toggle="modal" data-bs-target="#exampleModal">Reservez maintenant </button> 			
					<!-- Modal -->
					<div class="modal fade bg-success.bg-gradient" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel"> <span class="text-primary"> MODIFICATION </span> </h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					       	Etes vous sur de vouloir <span class="text-primary fs-4">modifier </span>  cette reservations ?
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Annuler</button>
					        <button type="submit" class="btn btn-success"> Oui	</button>
					      </div>
					    </div>
					  </div>
					</div>
					<!-- End Modal -->			
					</form>
				</div>
			</div>
			<div class="col-9">
		        <table border="1" class="table table-bordered">
				        
			        	<tr>
				         <th class="p-3 text-success">
				            <c:out value="NOM CONDUCTEUR" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="CONTACT CONDUCTEUR" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="NOM PARKING" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="VEHICULES" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="DATE ENTREE" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="HEURE ENTREE" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="TARIFS FCFA" />
				         </th>
			        	</tr>
				        <c:forEach var="parking" items="${ parking }">
			        	<tr>	
					          <td class="p-3">
					            <c:out value="${ parking.nom_conducteur }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ parking.phone_conducteur }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ parking.code_parking }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ parking.vehicule }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ parking.date_entre }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ parking.heure_entre }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ parking.tarif }" />
					          </td>
					          <td class="p-3">
					            <form method="get" action="modifications" >
				          		<input type="hidden" value="${ parking.id_reservez }" name="id_reservez" />
				          			<button type="submit" class="btn btn-success bold-btn text-white">Modifier</button>
				          		</form>
					          </td>
			            </tr>
				        </c:forEach>
		          </table>
			</div>
			
		</div>
	</div>
		


		<div>
			<section class="section_3">

		      <div class="container-fluid text-light bg-dark">
		        <div class="row p-5 align-items-center">
		         <div class="col">
		            <div class="text-success h6">
		              Proposez pourvous
		            </div>
		                Qui sommes-nous <br>
		                Contactez-nous <br>
		                Politique de confidentialité <br>
		                Faq <br>
		            </div>
		            <div class="col">
		            <div class="text-success h6">
		              Proposez pourvous
		            </div>
		                Qui sommes-nous <br>
		                Contactez-nous <br>
		                Politique de confidentialité <br>
		                Faq <br>
		            </div>
		            <div class="col">
		            <div class="text-success h6">
		              Proposez pourvous
		            </div>
		                Qui sommes-nous <br>
		                Contactez-nous <br>
		                Politique de confidentialité <br>
		                Faq <br>
		            </div>
		            <div class="col">
		            <div class="text-success h6">
		              Proposez pourvous
		            </div>
		                Qui sommes-nous <br>
		                Contactez-nous <br>
		                Politique de confidentialité <br>
		                Faq <br>
		            </div>
		        </div>
		
		        <!-- Copyright -->
		        <div class="text-light p-3 text-center">
		          Copyright © javaEE Gestions des Parking.
		        </div>
		
		      </div>

    		</section>
		</div>
		
</body>
</html>