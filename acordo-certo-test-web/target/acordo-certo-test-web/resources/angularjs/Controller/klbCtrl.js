angular.module("acordocerto").controller("acordoCtrl", function ($scope, acordoService, NgTableParams){
	$scope.app = "acordocerto";

	var vm = this;
	vm.itens = [];
    vm.exibe = false;
	

	
	vm.tabelClientes = new NgTableParams({}, {dataset: vm.itens});  
	
	
	var pesquisaClientes = function () {
		acordoService.pesquisaClientes().then(function (response){
			console.log("EXIBE DADOS NA TABELA");
			vm.itens = response.data;
			vm.responseFila = angular.fromJson(vm.itens);                  
        	vm.tabelClientes.settings({ dataset: vm.responseFila });
        	vm.tabelClientes.reload();
			console.log(vm.itens);
		});
	};
	
	vm.enviaDados = function (cliente){
		acordoService.enviaDados(cliente).then(function (response){
			console.log("foi");
			alert("Cliente Cadastrado !");
			pesquisaClientes();
		});
	};
	
	pesquisaClientes();

});