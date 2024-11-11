package com.matiassobarzo.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.matiassobarzo.modelos.Canciones;

@Repository
public interface RepositorioCanciones extends CrudRepository<Canciones, Long>{

}
