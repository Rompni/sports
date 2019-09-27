package edu.unimagdalena.sports.services;

import java.util.List;

import edu.unimagdalena.sports.entities.Partida;
import edu.unimagdalena.sports.entities.Usuario;

public interface PartidaService {

	List<Partida> buscarPartidasPorUsuario(Usuario usuario);

	void save(Partida partida);

	void delete(Partida partida);

	Partida buscarPartidaPorId(Long id);

	List<Partida> buscarPartidaPorDeporteCiudadDepto(String deporte, 
			String ciudad, 
			String dpto);

}
