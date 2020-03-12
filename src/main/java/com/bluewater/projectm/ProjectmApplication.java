package com.bluewater.projectm;

import java.io.File;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.bluewater.projectm.controller.view.AdminController;

@SpringBootApplication
public class ProjectmApplication {

	public static void main(String[] args) {
		
		new File(AdminController.uploadingDir).mkdirs();
		SpringApplication.run(ProjectmApplication.class, args);
	}
	


}
