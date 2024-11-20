package com.matiassobarzo.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matiassobarzo.modelos.Artista;
import com.matiassobarzo.repositorios.RepositorioArtista;

@Service
public class ServicioArtistas {
	@Autowired
	private RepositorioArtista repositorioArtista;
	
	public List<Artista> obtenerTodosLosArtistas() {
		return (List<Artista>) repositorioArtista.findAll();
	}
	
	public Artista obtenerArtistaPorId(Long id) {
		return repositorioArtista.findById(id).orElse(null);
	}
	
	public Artista agregarArtista(Artista artista) {
		return repositorioArtista.save(artista);
	}
}
