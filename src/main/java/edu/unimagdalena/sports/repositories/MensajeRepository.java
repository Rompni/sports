package edu.unimagdalena.sports.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.unimagdalena.sports.entities.Mensaje;
@Repository
public interface MensajeRepository extends JpaRepository<Mensaje, Long> {

}
