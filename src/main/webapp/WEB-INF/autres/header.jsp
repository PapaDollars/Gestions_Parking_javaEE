	
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Header</title>

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
 <!-- Menu -->
        <div>
	        	<div>
				<nav class="navbar navbar-expand-lg navbar-dark bg-dark p-5">
				  <div class="container-fluid">
				    
					<button class="btn btn-outline-success " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
					  MENU
					</button>
				  </div>
				  <div class="pe-5">
					  
				  		<a type="button" class="btn btn-primary px-5" href="/Gestion_parking/panier">
							  Notifications <span class="badge bg-danger text-white">  
							   +99
							  </span>
						</a>
				  </div>
				  <div class=" ">
		      		<form class="d-flex">
			        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
			        <button class="btn btn-outline-light" type="submit">Search</button>
			      </form>
		      	</div>
		      	
				</nav>
	
	        </div>
	
			<div class="offcanvas offcanvas-start bg-light" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
			  <div class="offcanvas-header">
			    <h5 class="offcanvas-title fs-3 text-success" id="offcanvasExampleLabel">GESTIONS PARKING</h5>
			    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			  </div>
			  <div class="offcanvas-body">
			    <div class="fs-4 ">
			      Réservez une place de parking
			    </div>
			    <div class="dropdown mt-5">
			      
			        <a class="btn btn-outline-success" href="/Gestion_parking/"> ACCUEIL </a>
			      
			    </div>
			    <div class="dropdown mt-4">
			      
			        <a class="btn btn-outline-success" href="/Gestion_parking/ajouterParking"> PARKING </a>
			      
			    </div>
			    <div class="dropdown mt-4">
			      
			        <a class="btn btn-success" href="/Gestion_parking/reservez"> RESERVEZ </a>
			      
			    </div>
			    <div class="dropdown mt-4">
			      
			        <a class="btn btn-outline-success" href="/Gestion_parking/tarifs"> TARIFS </a>
			      
			    </div>
			    <div class="dropdown mt-4">
			      
			        <a class="btn btn-outline-success" href="/Gestion_parking/annulations"> OPTION ANNULATION </a>
			      
			    </div>
			    <div class="dropdown mt-4">
			      
			        <a class="btn btn-outline-success" href="/Gestion_parking/modifications"> OPTION MODIFICATION </a>
			      
			    </div>
			  </div>
			</div>
			
        </div>
  
  
</body>
</html>