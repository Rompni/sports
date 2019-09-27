package edu.unimagdalena.sports.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.unimagdalena.sports.entities.Usuario;
@Repository
public interface UsuarioRespository extends JpaRepository<Usuario, Long> {
	Usuario findByUsername(String username);
	
	
}
