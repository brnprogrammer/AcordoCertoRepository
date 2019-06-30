angular.module("acordocerto").service("acordoService", function($http) {
	var _pesquisaClientes = function() {
		return $http.get("http://localhost:8088/cliente");
	};

	var _enviaDados = function(cliente) {
		return $http.post("http://localhost:8088/envia", cliente);

	};


	return {
		pesquisaClientes : _pesquisaClientes,
		enviaDados : _enviaDados
	};


});
