package com.joaco_orbit.canciones.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.joaco_orbit.canciones.servicios.ServicioCanciones;

import jakarta.validation.Valid;

import com.joaco_orbit.canciones.modelos.Cancion;

@Controller
public class ControladorCanciones {
    @Autowired
    private final ServicioCanciones servicioCanciones;

    public ControladorCanciones(ServicioCanciones servicioCanciones){
        this.servicioCanciones = servicioCanciones;
    }

    @GetMapping("/canciones")
    public String desplegarCanciones(Model model){
        model.addAttribute("listaCanciones", servicioCanciones.obtenerTodasLasCanciones());
        return "canciones";
    }

    @GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable Long idCancion, Model model){
        model.addAttribute("cancion", servicioCanciones.obtenerCancionPorId(idCancion));
        return "detalleCancion";
    }

    @GetMapping("/canciones/formulario/agregar")
    public String formularioAgregarCancion(@ModelAttribute("nuevaCancion") Cancion nuevaCancion){
        return "agregarCancion";
    }
    @PostMapping("/canciones/procesa/agregar")
    public String procesaAgregarCancion(@Valid @ModelAttribute("nuevaCancion") Cancion nuevaCancion, BindingResult validaciones){
        if (validaciones.hasErrors()){ 
            return "agregarCancion";
        } else {
            this.servicioCanciones.agregarCancion(nuevaCancion);
            return "redirect:/canciones";
        }
    }
}
