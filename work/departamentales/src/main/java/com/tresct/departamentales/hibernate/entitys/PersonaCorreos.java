package com.tresct.departamentales.hibernate.entitys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="personacorreos")
public class PersonaCorreos {

	@Id
	@GeneratedValue
	private Integer id;
	@Column(name="idpersona")
	private Integer idPersona;
	@Column(unique=true)
	private String correo;
	
	public PersonaCorreos() {
	}

	public PersonaCorreos(Integer id, Integer idPersona, String correo) {
		super();
		this.id = id;
		this.idPersona = idPersona;
		this.correo = correo;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIdPersona() {
		return idPersona;
	}

	public void setIdPersona(Integer idPersona) {
		this.idPersona = idPersona;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	
}
