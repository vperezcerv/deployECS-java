package com.example.demo;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "http://deploy-s3-app-angular-vapc-1098824939.s3-website-us-east-1.amazonaws.com/", maxAge = 3600)
@RestController
public class ApiController {

    @GetMapping("/api/data")
    public ResponseEntity<String> getData() {
        return ResponseEntity.ok("Datos desde el backend");
    }
}