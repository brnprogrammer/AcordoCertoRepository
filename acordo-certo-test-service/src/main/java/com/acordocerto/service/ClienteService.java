package com.acordocerto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acordocerto.model.Cliente;
import com.acordocerto.repository.ClienteRepository;

@Service("ClienteService")
public class ClienteService {

	@Autowired
	private ClienteRepository clienteRepository;
	
	public Cliente saveCliente(Cliente cliente) {
		
		return clienteRepository.save(cliente);
	}
	
	public @ResponseBody List<Cliente> listClientes(){
		return clienteRepository.findAll();
	}
	
}
