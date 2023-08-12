package com.aschalew.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {

		System.out.println("This is a test printtt");

		SpringApplication.run(DemoApplication.class, args);
	}

}
