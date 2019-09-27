package edu.unimagdalena.sports;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import edu.unimagdalena.sports.entities.Usuario;
import edu.unimagdalena.sports.repositories.UsuarioRespository;

@SpringBootApplication
public class SportsApplication {

	@Autowired
	private UsuarioRespository usuarioRepositorio;
	public static void main(String[] args) {
		SpringApplication.run(SportsApplication.class, args);
	}
	
	public void run(String... args) throws Exception{
		Usuario usuario = new Usuario();
		usuario.setUsername("jj");
		usuario.setNombre("Jose Jose");
		usuario.setApellidos("Perez perez");
		usuario.setEmail("jj@gmai.com");
		usuario.setEdad(34);
		usuario.setPassword("123");
		
		usuarioRepositorio.save(usuario);
		
		
		
		/*Mensaje mensaje = new Mensaje();
		
		mensaje.setContenido("este es un nuevo mensaje");*/
	}

}
