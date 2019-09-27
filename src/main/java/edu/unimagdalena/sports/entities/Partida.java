package edu.unimagdalena.sports.entities;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
@Entity
@Table(name="partidas")
public class Partida implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column
	private String creador;
	@Column
	private String deporte;
	@Column
	private String departamento;
	@Column
	private String ciudad;
	@Column
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fecha;
	

	@Column
	//@Temporal(TemporalType.TIME)
	//@DateTimeFormat(iso = ISO.TIME)
	private String horaComienzo;
	
	@Column
	//@DateTimeFormat(iso = ISO.TIME)
	private String horaFin;	
	@Column
	private Integer participantes;
	@Column
	private Integer suplentes;
	@Column
	private String descripcion;
	
	@ManyToMany(mappedBy = "partidas")
	private Set<Usuario> usuariosParticipantes ;
	
	public Partida() {
		super();
		usuariosParticipantes = new HashSet<>(); 
		// TODO Auto-generated constructor stub
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCreador() {
		return creador;
	}
	public void setCreador(String creador) {
		this.creador = creador;
	}
	public String getDeporte() {
		return deporte;
	}
	public void setDeporte(String deporte) {
		this.deporte = deporte;
	}
	public String getDepartamento() {
		return departamento;
	}
	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}
	public String getCiudad() {
		return ciudad;
	}
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	
	
	public String getHoraComienzo() {
		return horaComienzo;
	}
	public void setHoraComienzo(String horaComienzo) {
		this.horaComienzo = horaComienzo;
	}
	public String getHoraFin() {
		return horaFin;
	}
	public void setHoraFin(String horaFin) {
		this.horaFin = horaFin;
	}
	public Integer getParticipantes() {
		return participantes;
	}
	public void setParticipantes(Integer participantes) {
		this.participantes = participantes;
	}
	public Integer getSuplentes() {
		return suplentes;
	}
	public void setSuplentes(Integer suplentes) {
		this.suplentes = suplentes;
	}
	
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Set<Usuario> getUsuariosParticipantes() {
		return usuariosParticipantes;
	}
	public void setUsuariosParticipantes(Set<Usuario> usuariosParticipantes) {
		this.usuariosParticipantes = usuariosParticipantes;
	}
	
	
}
