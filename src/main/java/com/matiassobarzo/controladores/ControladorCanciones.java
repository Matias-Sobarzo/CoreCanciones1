package com.matiassobarzo.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.matiassobarzo.modelos.Canciones;
import com.matiassobarzo.servicios.ServicioArtistas;
import com.matiassobarzo.servicios.ServicioCanciones;

import jakarta.validation.Valid;

@Controller
public class ControladorCanciones {
	
	@Autowired
	private ServicioCanciones servicioCanciones;
	
	@Autowired
	private ServicioArtistas servicioArtistas;
	
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
	
	@GetMapping("/formulario/agregar")
	public String formularioAgregarCancion(@ModelAttribute Canciones cancion, Model modelo) {
		modelo.addAttribute("cancion", new Canciones());
		modelo.addAttribute("listaArtistas", servicioArtistas.obtenerTodosLosArtistas());
		return "agregarCancion.jsp";
	}

	@PostMapping("/procesa/agregar")
	public String procesarAgregarCancion(@Valid @ModelAttribute Canciones cancion, BindingResult validaciones) {
		if (validaciones.hasErrors()) {
			return "agregarCancion.jsp";
		}
		servicioCanciones.agregarCancion(cancion);
		return "redirect:/canciones";
	}
	
	@GetMapping("/canciones/formulario/editar/{id}")
	public String formularioEditarCancion(@ModelAttribute("cancion") Canciones cancion, @PathVariable("id") Long id, Model modelo) {
		modelo.addAttribute("cancion", servicioCanciones.obtenerCancionPorId(id));
		modelo.addAttribute("listaArtistas", servicioArtistas.obtenerTodosLosArtistas());
		return "editarCancion.jsp";
	}
	
	@PutMapping("/canciones/procesa/editar/{id}")
	public String procesarEditarCancion(@Valid @ModelAttribute("cancion") Canciones cancion, BindingResult validaciones, @PathVariable("id") Long id, Model modelo) {
		if (validaciones.hasErrors()) {
			modelo.addAttribute("listaArtistas", servicioArtistas.obtenerTodosLosArtistas());
			return "editarCancion.jsp";
		}
		servicioCanciones.actualizaCancion(cancion);
		return "redirect:/canciones";
	}
	
	@DeleteMapping("/canciones/eliminar/{id}")
	public String procesarEliminarCancion(@PathVariable("id") Long id) {
		this.servicioCanciones.eliminaCancion(id);
		return "redirect:/canciones";
	}
}
