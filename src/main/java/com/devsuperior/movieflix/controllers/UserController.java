package com.devsuperior.movieflix.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.devsuperior.movieflix.dto.UserDTO;
import com.devsuperior.movieflix.dto.UserInsertDTO;
import com.devsuperior.movieflix.dto.UserUpdateDTO;
import com.devsuperior.movieflix.services.UserService;

@RestController
@RequestMapping(value = "/users")
public class UserController {

	@Autowired
	private UserService service;
	
	@GetMapping(value = "/{id}")
	public ResponseEntity<UserDTO> findById(@PathVariable Long id){
		UserDTO dto = service.findById(id);
		return ResponseEntity.ok(dto);
	}
	
	@GetMapping(value = "/profile")
	public ResponseEntity<UserDTO> getProfile(){
		UserDTO dto = service.getProfile();
		return ResponseEntity.ok(dto);
	}
	
	@PostMapping
	public ResponseEntity<UserDTO> insert(@Valid @RequestBody UserInsertDTO insertDTO){
		UserDTO dto = new UserDTO();
		dto = service.insert(insertDTO);
		return ResponseEntity.ok(dto);
	}
	
	@PutMapping(value = "/{id}")
	public ResponseEntity<UserDTO> update(@PathVariable Long id,  @Valid @RequestBody UserUpdateDTO dto){
		UserDTO newDto = service.update(id, dto);
		return ResponseEntity.ok().body(newDto);
	}

}
