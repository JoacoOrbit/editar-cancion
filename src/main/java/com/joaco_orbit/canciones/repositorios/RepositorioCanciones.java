package com.joaco_orbit.canciones.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Optional;

import com.joaco_orbit.canciones.modelos.Cancion;

@Repository
public interface RepositorioCanciones extends CrudRepository<Cancion, Long>{
    List<Cancion> findAll();
    Optional<Cancion> findById(Long id);
    Cancion save(Cancion nuevaCancion);
    
}
