package edu.unimagdalena.sports.services;

import java.util.Arrays;
import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import edu.unimagdalena.sports.entities.Role;
import edu.unimagdalena.sports.entities.Usuario;
import edu.unimagdalena.sports.repositories.RoleRepository;
import edu.unimagdalena.sports.repositories.UsuarioRespository;

@Service
public class UsuarioServiceImp implements UsuarioService {
	@Autowired
	private UsuarioRespository usuarioRepositorio;
	@Autowired
	private RoleRepository rolRespositorio;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public Usuario findUsuarioByUsername(String username) {
		return usuarioRepositorio.findByUsername(username);
	}

	public Usuario getUsuarioById(long id) {
		return usuarioRepositorio.getOne(id);
	}
	public void save(Usuario usuario) {
		usuario.setPassword(bCryptPasswordEncoder.encode(usuario.getPassword()));
		usuario.setEnabled(true);
		Role userRole = rolRespositorio.findByRole("ADMIN");
		usuario.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
		usuarioRepositorio.save(usuario);
		
	}

	@Override
	public void actualizarPartida(Usuario usuario) {
		usuarioRepositorio.save(usuario);
		
	}

}
