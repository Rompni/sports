package edu.unimagdalena.sports.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.unimagdalena.sports.entities.Role;

@Repository
public interface RoleRepository  extends JpaRepository<Role, Long>{
	Role findByRole(String role);
}
