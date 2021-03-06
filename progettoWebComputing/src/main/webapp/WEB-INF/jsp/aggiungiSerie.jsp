<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiungi Serie Tv</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="../css/notfound.css" type="text/css" />
	<script src="../js/aggiungiSerie.js"></script>
</head>
<body>	
<div id="page_start" class="text-center">
  <img src="images/background.png" class="col-lg-4 col-md-8 col-sm-12">
 </div>
	<div class="container rounded bg-white mt-5">
    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
				<img id="output" width="200" height="300"/>
				<script>
				  var loadFile = function(event) {
				    var output = document.getElementById('output');
				    output.src = window.webkitURL.createObjectURL(event.target.files[0]);
				    output.onload = function() {
				     	URL.revokeObjectURL(output.src) // free memory
				    }
				  };
				</script>
            </div>
        </div>
        <div class="col-lg-8 col-md-8 col-sm-8">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="d-flex flex-row align-items-center back"><i class="fa fa-long-arrow-left"></i>
                        <h6><a id="link" href="index.html">Home</a></h6>
                    </div>
                </div>
                <h6 id="serie">Inserisci la Serie Tv:</h6>
                <div class="row mt-1">
                    <div class="col-lg-6 col-md-6 col-sm-6"><input type="text" class="form-control" placeholder="Titolo" id="titolo"></div>
                    <div class="col-lg-6 col-md-6 col-sm-6"><input type="text" class="form-control" placeholder="Genere" id="genere"></div>
                </div>
                <div class="row mt-3">
                  	<div class="col-lg-6 col-md-6 col-sm-6"><input type="text" class="form-control" placeholder="Descrizione" id="descrizione"></div>
                  	<div class="col-lg-6 col-md-6 col-sm-6"><input type="file" accept="image/*" onchange="loadFile(event)" id="name"></div>
                </div>
                 <div class="row mt-2">
                    <div class="col-lg-6 col-md-6 col-sm-6"><input type="text" class="form-control" placeholder="Anno Uscita" id="annoUscita"></div>
                    <div class="col-lg-6 col-md-6 col-sm-6"><input type="text" class="form-control" placeholder="Ideatore" id="regista"></div>
                </div>
                 <div class="row mt-3">
                  	<div class="col-lg-6 col-md-6 col-sm-6"><input type="text" class="form-control" placeholder="Piattaforme" id="piattaforme"></div>
                  	<div class="col-lg-6 col-md-6 col-sm-6"><input type="number" class="form-control" placeholder="Stagioni" id="stagioni"></div>
                </div>
                <div class="mt-2 text-right">
                	<button class="btn btn-primary profile-button" id="aggiungiSerie">Aggiungi</button>
                </div>
                <h6 class="mt-2" id="serie">Assicurati di star compilando i campi per una serie tv gi� esistente!</h6>
                <div class="row mt-1">
                	<div class="col-lg-6 col-md-6 col-sm-6"><input type="text" class="form-control" placeholder="Titolo" id="titolo2"></div>
                	<div class="col-lg-3 col-md-3 col-sm-3"><input type="number" class="form-control" placeholder="Stagione" id="stagione"></div>
                	<div class="col-lg-3 col-md-3 col-sm-3"><input type="number" class="form-control" placeholder="Puntate" id="puntate"></div>
                	<div class="col-lg-3 col-md-3 col-sm-3"><input type="text" class="form-control" placeholder="Durata" id="durata"></div>
                	<div class="col-lg-3 col-md-3 col-sm-3"><button class="btn btn-success profile-button" id="ok">OK</button></div>
                </div>
            </div>
        </div>
    </div>
</div>
		
	
	<div id="footer" class="text-center">
			 <footer>
			<h6>Tutti i diritti riservati. <a href="chisiamo.html" id="link">Dev Team</a><div class="navbar-brand"><img src="images/fox-logo.png" alt="logo" width="40" height="40"></div></h6> 
			</footer>
	</div>
</body>
</html>