<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file="taglibs.jsp" %>
<!DOCTYPE>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Bienvenue</title>
		<%@ include file="links.jsp" %>
		
		<style>
			body{
				font-size: 10px!important;
			}		
			
			#searchDiv{
				width: 80%;
				background-color: #eee;
				margin: 15px 0px;
				padding: 15px;
				border-radius: 10px;
			}
			
			.searchTable tr td{
				padding: 5px;
				margin: 20px 0px;
			}
			
						
			h2{
			color: white;
			background-color: orange;
			width: 80%;
			height: 50px;
			border-radius: 10px;
			}
		</style>
		
	</head>
	
	
	
		
	<body>
		
  		<div align="center" id="mainDiv" class="container-fluid" style="border: 1px solid #eee; width: 90%">
  				<h2>Référentiel Client Unique</h2>
  				
<!-- --------	Table search options -->
			<div id="searchDiv">
			
				<table class="searchTable" style="width: 80%">
					<tr>
						<td>Nom: </td> <td><input type="text" id="txtNom" class="corner10"></td>
						<td>Prénoms:</td> <td><input type="text" id="txtPrenom"></td>
						<td>Téléphone: </td> <td><input type="text" id="txtPhone"></td>
						
					</tr>
					<tr>
						<td>Adresse: </td> <td><input type="text" id="txtAdresse"></td>
						<td>Date de naissance: </td> <td><input type="text" id="txtDob"></td>
						<td>Lieu de naissance: </td> <td><input type="text" id="txtLob"></td>
						
					</tr>
					
					<tr>
						<td colspan="5"></td>
						<td><input type="button" value="Rechercher" id="btnSearch"></td>
					</tr>
				</table>
			
			</div>

<!-- --------	Table data -->

		<table class="table table-bordered  table-hover" style="width: 80%" id="dataTable">
			<thead>
				<tr class="info">
					<th colspan="6">Liste des services</th>
				</tr>
				
				<tr class="success">
					<th>Nom</th>
					<th>Prénoms</th>
					<th>Fixe</th>
					<th>Mobile</th>
					<th>Email</th>
					<th>Détails</th>
				</tr>
				
			</thead>
			
			<tbody>
			
				<c:forEach items="${dataAgents}" var="item">
					<tr>
						<td>${item.nom }</td>
						<td>${item.prenom }</td>
						<td>${item.telFixe }</td>
						<td>${item.telMobile }</td>
						<td>${item.email }</td>
						<td><input type="button" id="btnDetails" value="Details"/> </td>
					</tr>					
				</c:forEach>
			
			</tbody>
		</table>

  				
  		</div>
  </body>
  
  <script>
  function onSubmit(nom, prenoms, tel, adresse, dateNaissance, lieuNaissance){

	  var v_url="find.jsp?ajax=true&controle=true";
	  var v_type= "POST";
	  $.ajax({
		  type: v_type,
		  url: v_url,
		  data: {
			    test: JSON.stringify({
				      nom: nom,
				      prenoms: prenoms,
				      tel: tel,
				      adresse: adresse,
				      dateNaissance: dateNaissance,
				      lieuNaissance: lieuNaissance
			      }),
		    },
		  dataType: 'text',
		  success: function(response){
			  $("#dataTable").html(response);
		  },
		  error: function(e){
		  alert('Une Erreur est survenue!');
		  }		
	  });
  }
  
  
  	$(document).ready(function(){
  		var nom, prenoms, tel, adresse, dateNaissance, lieuNaissance;
  		$("#btnSearch").click(function(){
  			nom = $("#txtNom").val();
  			prenoms = $("#txtPrenom").val();
  			tel = $("#txtPhone").val();
  			adresse = $("#txtAdresse").val();
  			dateNaissance = $("#txtDob").val();
  			lieuNaissance = $("#txtLob").val();
  			
  			onSubmit(nom, prenoms, tel, adresse, dateNaissance, lieuNaissance);
  			
  			
  		});
  	});
  </script>
  
</html>