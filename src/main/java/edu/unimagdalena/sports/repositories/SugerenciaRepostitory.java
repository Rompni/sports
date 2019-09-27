package edu.unimagdalena.sports.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.unimagdalena.sports.entities.Sugerencia;
@Repository
public interface SugerenciaRepostitory extends JpaRepository<Sugerencia, Long> {

}
