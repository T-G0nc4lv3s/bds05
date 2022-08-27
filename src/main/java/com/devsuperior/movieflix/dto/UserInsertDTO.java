package com.devsuperior.movieflix.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.devsuperior.movieflix.entities.User;

public class UserInsertDTO extends UserDTO{
	private static final long serialVersionUID = 1L;

	@Size(min = 6, message = "O campo deve ter no mínimo 6 caracteres")
	@NotBlank(message = "Campo requerido")
	private String password;
	
	public UserInsertDTO() {
		super();
	}

	public UserInsertDTO(String password) {
		super();
		this.password = password;
	}

	public UserInsertDTO(User entity) {
		super(entity);
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
