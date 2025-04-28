package equ.cjc.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class StudentManagementApplication {

	public static void main(String[] args) {
		System.out.println("This Is A Project Start");
		SpringApplication.run(StudentManagementApplication.class, args);
		System.out.println("This Is A Project End");
		
	}

}
