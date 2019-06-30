<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html ng-app="acordocerto">
<head>
<title>Acordo Certo</title>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- AngularJs -->

<script src="<c:url value="/resources/angular/angular.js" />"></script>
<script src="<c:url value="/resources/angular/angular.min.js" />"></script>
<script src="<c:url value="/resources/angular/dirPagination.js" />"></script>

<!-- Ui-Bootstrap -->
<script
	src="<c:url value="/resources/ui-bootstrap/ui-bootstrap-tpls-2.0.0.min.js" />"></script>

<!--  NgTable -->
<script src="<c:url value="/resources/ng-table/ng-table.min.js" />"></script>

<link href="<c:url value="/resources/bootstrap/css/bootstrap.css" />"
	rel="stylesheet" type="text/css" />

<script src="<c:url value="/resources/angularjs/Module/app.js" />"></script>
<script
	src="<c:url value="/resources/angularjs/Controller/klbCtrl.js" />"></script>


<script
	src="<c:url value="/resources/angularjs/Service/acordoService.js" />"></script>
	


<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
</head>

<section class="col-xs-10 col-sm-10 col-md-10 col-lg-12" ng-app="acordocerto" ng-controller="acordoCtrl as gr" ng-init="gr.init()">
	<div class="container">
		<h1 class="">
			Acordo Certo Teste
		</h1>

		<form name="enviaDados">
		<div class="form-group">
			<label class="control-label" for="nome">Nome</label>
			<input type="text" class="form-control" ng-model="cliente.nome" name="nome" 
				id="nome">
		</div>
		
		<div class="form-group">
				<label class="control-label" for="escolaridade">Escolaridade</label>
				<select class="form-control" class="col-sm-2" ng-model="cliente.escolaridade" >
		     		 <option value="Ensino Médio">Ensino Médio</option>
		     		 <option value="Superior Completo">Superior Completo</option>
		     		 <option value="Superior Cursando">Superior Cursando</option>
		     		 <option value="Pós Graduado">Pós Graduado</option>
   				 </select>
		</div>
		
		<div class="form-group">
			<label class="control-label"  for="trabalhando">Trabalhando no momento : </label>
    		<input type="checkbox" ng-model="cliente.trabalhando"  ng-true-value="'SIM'" ng-false-value="'NAO'">
		</div>
		
		<hr />
		<div class="form-group text-center">
			<button class="btn btn-primary btn-block" ng-click="gr.enviaDados(cliente)" >Adicionar Cliente</button>
		</div>
	</form>
		
<!-- Table -->
	<div class="row">		
		<table ng-table="gr.tabelClientes" class="table table-bordered table-striped" show-filter="true">

			<tbody>
			<tr ng-repeat="clientes in $data | orderBy : 'id'">
			
				<td title="'Id'" >
					{{clientes.id}}
				</td>
				<td title="'Nome'">
					{{clientes.nome}}
				</td>
			
				<td title="'Trabalhando'">
					{{clientes.trabalhando}}
				</td>
				
				<td title="'Escolaridade'" >
					{{clientes.escolaridade}}
				</td>
	
			</tr>
			</tbody>
		</table>
	</div>	

	</div>
</section>
</html>
