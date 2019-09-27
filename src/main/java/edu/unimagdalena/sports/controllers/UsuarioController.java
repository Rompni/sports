package edu.unimagdalena.sports.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.unimagdalena.sports.entities.Usuario;

import edu.unimagdalena.sports.services.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;

	@GetMapping("/home")
	public String index(Model model) {

		return "home";
	}

	@GetMapping("/registro")
	public String mostrarFormRegistro(Model model) {
		Usuario u = new Usuario();
		model.addAttribute("usuario", u);
		return "registro";
	}

	@PostMapping("/registro")
	public String registroUsuario(@Valid Usuario usuario, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "registro";
		}
		usuarioService.save(usuario);

		model.addAttribute("user", usuario);

		return "home";
	}

}
