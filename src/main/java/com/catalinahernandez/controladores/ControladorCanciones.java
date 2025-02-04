package com.catalinahernandez.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.catalinahernandez.modelos.Cancion;
import com.catalinahernandez.servicios.ServicioCanciones;

@Controller
public class ControladorCanciones {
	@Autowired
	ServicioCanciones servicio;
	
	@GetMapping("/canciones")
	public String desplegarCanciones(Model modelo) {
		List<Cancion> canciones = servicio.obtenerTodasLasCanciones();
		modelo.addAttribute("canciones", canciones);
		return "canciones.jsp";
	}
	
	@GetMapping("/canciones/detalle/{idCancion}")
	public String desplegarDetalleCancion(@PathVariable Long idCancion , Model modelo) {
		Cancion cancion = servicio.obtenerCancionPorId(idCancion);
		modelo.addAttribute("cancion", cancion);
		return "detalleCancion.jsp";
	}
}
