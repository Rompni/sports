package edu.unimagdalena.sports.entities;

import java.io.Serializable;
import java.util.Date;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name = "usuarios")
public class Usuario implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "username", nullable = false, unique = true)
	private String username;
	@Column (name = "email", nullable = false, unique = true)
	private String email;
	@Column(name = "nombre")
	private String nombre;
	@Column(name="apellidos")
	private String apellidos;
	@Column(name="edad")
	private Integer edad;
	@Column(name="password")
	private String password;
	@Column(name="enabled")
	private Boolean enabled;
	@Column (name="foto")
	private String foto;
	@Column(name="rol")
	private String rol;
	@Column(name="created_at")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createdAt;
	
	@OneToMany(mappedBy="creador") 
	private Set<Mensaje> mensajes;
	
	@OneToMany(mappedBy="usuario")
	private Set<Sugerencia> sugerencias;
	
	@ManyToMany
	@JoinTable(name="usuarios_partidas",
	joinColumns= @JoinColumn( name="usuario_id", referencedColumnName="id"), 
	inverseJoinColumns=@JoinColumn( name="partida_id", referencedColumnName="id"))
	private Set<Partida> partidas;
	
	@ManyToMany(cascade = CascadeType.PERSIST)
    @JoinTable(name = "usuarios_roles", joinColumns = @JoinColumn(name = "user_id", referencedColumnName="id"), inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName="role_id"))
    private Set<Role> roles;
	
	
	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public Integer getEdad() {
		return edad;
	}
	public void setEdad(Integer edad) {
		this.edad = edad;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	public String getRol() {
		return rol;
	}
	public void setRol(String rol) {
		this.rol = rol;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Set<Mensaje> getMensajes() {
		return mensajes;
	}
	public void setMensajes(Set<Mensaje> mensajes) {
		this.mensajes = mensajes;
	}
	public Set<Sugerencia> getSugerencias() {
		return sugerencias;
	}
	public void setSugerencias(Set<Sugerencia> sugerencias) {
		this.sugerencias = sugerencias;
	}
	public Set<Partida> getPartidas() {
		return partidas;
	}
	public void setPartidas(Set<Partida> partidas) {
		this.partidas = partidas;
	}
	public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	
	
	
	
	

}
