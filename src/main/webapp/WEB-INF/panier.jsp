
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notification</title>

  <!-- Bootstrap 5 CSS -->
  <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css'>
  <!-- Font Awesome CSS -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css'>
  <!-- Google Fonts -->
  <link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap'>
  <!-- Bootstrap 5 JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" ></script>  

  
</head>
<body>

<div class="">
		<%@include file="autres/header.jsp" %></div>	
		
		<div class="container-fluide m-4">
		<div class="row p-5" >
			
			<div class="col">
			
				<h3 class="text-danger">Notifications concernant les reservations des parking dans l'application...</h3>
				
				
					<c:forEach var="parking" items="${ parking }">
					
						<div class="bg-light m-5 mx-5 p-5  bg-light" role="alert" aria-live="assertive" aria-atomic="true">
						  <div class="toast-header">
						    <strong class="me-auto fs-4	"> <c:out value="${ parking.nom_conducteur }" /></strong>
						    <small>11 mins ago</small>
						    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
						  </div>
						  <div class="toast-body fs-5">
						     A fait une reservation au parking : <span class="text-success fs-4"> <c:out value="${ parking.code_parking }" />.</span>
						     Le : <span class="text-success fs-4"> ${ parking.date_entre } .</span>
						     A : <span class="text-success fs-4"> ${ parking.heure_entre } .</span>
						     Type de vehicule : <span class="text-success fs-4">  ${ parking.vehicule } </span>
						  </div>
						</div>
						
				        </c:forEach>
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