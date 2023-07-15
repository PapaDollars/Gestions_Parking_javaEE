
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
			
				<h3 class="text-success">Supprimer un Espace de Parking</h3>
				
			</div>
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
					            <form method="post" action="supprimerParking" >
				          		<input type="hidden" value="${ parking.code_parking }" name="code_parking" />
				          			<button type="button" class="btn btn-danger bold-btn text-white" data-bs-toggle="modal" data-bs-target="#exampleModal">Supprimer</button>
									<!-- Modal -->
									<div class="modal fade bg-success.bg-gradient" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="exampleModalLabel"><span class="text-danger"> SUPPRESSION </span></h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
									       	Etes vous sur de vouloir <span class="text-danger fs-4">supprimer</span> ce parking ?
									      </div>
									      <div class="modal-footer">
									       <button type="button" class="btn btn-success" data-bs-dismiss="modal">Non</button>
									        <button type="submit" class="btn btn-danger"> Oui	</button>
									      </div>
									    </div>
									  </div>
									</div>
									<!-- End Modal -->
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