package com.joaco_orbit.canciones.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import com.joaco_orbit.canciones.modelos.Cancion;

import com.joaco_orbit.canciones.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {
    @Autowired
    private final RepositorioCanciones repositorioCanciones;

    public ServicioCanciones(RepositorioCanciones repositorioCanciones){
        this.repositorioCanciones = repositorioCanciones;
    }

    public List<Cancion> obtenerTodasLasCanciones(){
        return this.repositorioCanciones.findAll();
    }

    // public Cancion obtenerCancionPorId(Long id){
    //     List<Cancion> canciones = obtenerTodasLasCanciones();
    //     for (Cancion c:  canciones){
    //         if (c.getId().equals(id)) {
    //             return c;
    //         }
    //     }
    //     return null;
    // }

    public Cancion obtenerCancionPorId(Long id){
        return this.repositorioCanciones.findById(id).orElse(null);  
    }

    public Cancion agregarCancion(Cancion nuevaCancion){
        return this.repositorioCanciones.save(nuevaCancion);
    }
}
