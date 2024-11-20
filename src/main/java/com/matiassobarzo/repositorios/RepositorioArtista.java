package com.matiassobarzo.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.matiassobarzo.modelos.Artista;

@Repository
public interface RepositorioArtista extends CrudRepository<Artista, Long>{
	List<Artista> findAll();

}
