package com.devsuperior.movieflix.controllers.exceptions;

import java.time.Instant;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.devsuperior.movieflix.services.exceptions.ResourceNotFoundException;

@ControllerAdvice
public class ControllerExceptionHandler {

	@ExceptionHandler(ResourceNotFoundException.class)
	public ResponseEntity<StandardError> entityNotFound (ResourceNotFoundException e, HttpServletRequest request){
		
		StandardError err = new StandardError();
		err.setTimestamp(Instant.now());
		err.setStatus(HttpStatus.NOT_FOUND.value());
		err.setMessage(e.getMessage());
		err.setError("Resource not found");
		err.setPath(request.getRequestURI());
		
		return ResponseEntity.status(HttpStatus.NOT_FOUND).body(err);
	}
}