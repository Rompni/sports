package edu.unimagdalena.sports.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.unimagdalena.sports.entities.Partida;
import edu.unimagdalena.sports.entities.Usuario;
@Repository
public interface PartidaRepository extends JpaRepository<Partida, Long> {
	List<Partida> findPartidasByCreador(String creador);
	
	@Query("SELECT p FROM Partida p WHERE p.deporte = :deporte or p.ciudad = :ciudad or p.departamento =:depto")
	List<Partida> findPartidaByDeporteOrCiudadOrProvincia(
			@Param("deporte") String deporte, 
			@Param("ciudad") String ciudad, 
			@Param("depto") String depto);

}
