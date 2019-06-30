package com.acordocerto.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.acordocerto.model.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Long>{

}
