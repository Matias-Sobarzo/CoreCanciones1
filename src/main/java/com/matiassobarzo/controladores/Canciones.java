package com.matiassobarzo.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.matiassobarzo.servicios.ServicioCanciones;

@Controller
public class Canciones {
	
	@Autowired
	private ServicioCanciones servicioCanciones;
	
	@GetMapping("/canciones")
	public String desplegarCanciones(Model modelo) {
		modelo.addAttribute("canciones", servicioCanciones.obtenerTodasCanciones());
		return "canciones.jsp";
	}
	
	@GetMapping("/canciones/detalle/{id}")
	public String desplegarDetalleCanciones(@PathVariable("id") Long id, Model modelo) {
		modelo.addAttribute("cancion", servicioCanciones.obtenerCancionPorId(id));
		return "detalleCancion.jsp";
		
	}
}
