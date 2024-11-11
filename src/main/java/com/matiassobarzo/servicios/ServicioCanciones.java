package com.matiassobarzo.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matiassobarzo.modelos.Canciones;
import com.matiassobarzo.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {
	
	@Autowired
	private RepositorioCanciones repositorio;
	
	public List<Canciones> obtenerTodasCanciones() {
		return (List<Canciones>) repositorio.findAll();
	}
	
	public Canciones obtenerCancionPorId(Long id) {
		return repositorio.findById(id).orElse(null);
	}

}