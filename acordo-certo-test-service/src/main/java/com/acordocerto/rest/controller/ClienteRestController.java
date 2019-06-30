package com.acordocerto.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.acordocerto.model.Cliente;
import com.acordocerto.service.ClienteService;

@RestController
public class ClienteRestController {

	@Autowired 
	private ClienteService clienteService;
	
	@CrossOrigin
	@PostMapping(value = "/envia", produces = MediaType.APPLICATION_JSON_VALUE)
	public Cliente save(@RequestBody Cliente cliente) {
		return clienteService.saveCliente(cliente);
	}
	
	@CrossOrigin
	@GetMapping(value = "/cliente", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Cliente> listClientes(){
		return clienteService.listClientes();
	}
	
	
}
