
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
  <!-- Bootstrap 5 CSS -->
  <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css'>
  <!-- Font Awesome CSS -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css'>
  <!-- Google Fonts -->
  <link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap'>
  <!-- Bootstrap 5 JS -->
  <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js'></script>
  
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
			          <a class="navbar-brand text-light" href="/Gestion_parking/ajouterParking">Ajouter parking</a>
			        </li>
			        <li class="nav-item dropdown p-2">
			          <a class="navbar-brand text-light"  href="/Gestion_parking/modifierParking">Modifier parking</a>
			        </li>
			        <li class="nav-item dropdown p-2">
			          <a class="navbar-brand text-light" href="/Gestion_parking/supprimerParking">Supprimer parking</a>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>

        </div>
		<div class="row p-5" >
			
			<div class="col">
			
				<h3 class="text-success">Modifier l'Espace Parking</h3>
				
				
				<div class="mt-5 pt-5">
				
				
					<form method="post" action="modifierParking">
					<div class="form-group">
					      <input type="text" class="form-control" name="id_parking" value="${p.id_parking}" disabled>
					   </div> <br>
					  <div class="form-group">
					      <label for="nom_parking">ZONE PARKING : </label>
							   <select class="form-select" name="nom_parking" size="4" aria-label="size 3 select example">
								  <option value="${p.nom_parking}" selected>${p.nom_parking}</option>
								  <option value="Est" >Est</option>
								  <option value="Ouest"  >Ouest</option>
								  <option value="Ouest">Centre</option>
								  <option value="Sud" >Sud</option>
								  <option value="Nord" >Nord</option>
								</select>
					   </div> <br>
					    <div class="form-group">
					      <label for="code_parking">Code Parking :</label>
					      <input type="text" class="form-control" name="code_parking" id="code_parking" value="${p.code_parking}" placeholder="exemple : P1" required>
					   </div> <br>
					   <div class="form-group">
					      <label for="type">Type :</label>
					      		<select class="form-select" name="type" size="3" aria-label="size 3 select example">
								   <option value="${p.type}" selected >${p.type}</option>
								   <option value="Exterieur" >Exterieur</option>
								   <option value="Exterieur" >Souterrain</option>
								   <option value="Couvert" >Couvert</option>
								</select>
					   </div> <br>
					  <button type="button" class="btn btn-warning bold-btn fs-5 mt-5 p-2 text-black" data-bs-toggle="modal" data-bs-target="#exampleModal"> Modifier maintenant </button> 		
					<!-- Modal -->
					<div class="modal fade bg-success.bg-gradient" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel"> <span class="text-primary"> MODIFICATION </span> </h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					       	Etes vous sur de vouloir <span class="text-primary fs-4">modifier </span>  ce parking ?
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
			<div class="col-1"></div>
			<div class="col-9">
		        <table border="1" class="table table-bordered">
				        
			        	
			        	<tr>
				         <th class="p-3 text-success">
				            <c:out value="ID" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="ZONE PARKING" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="CODE PARKING" />
				         </th>
				         <th class="p-3 text-success">
				            <c:out value="TYPE" />
				         </th>
			        	</tr>
				     
				        <c:forEach var="parking" items="${ parking }">
			        	<tr>	
					          <td class="p-3">
					            <c:out value="${ parking.id_parking }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ parking.nom_parking }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ parking.code_parking }" />
					          </td>
					          <td class="p-3">
					            <c:out value="${ parking.type }" />
					          </td>
					          <td class="p-3">
					            <form method="get" action="modifierParking" >
				          			<input type="hidden" value="${ parking.id_parking }" name="id_parking" />
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