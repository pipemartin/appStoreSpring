package edu.uscodev.controller;


import edu.uscodev.model.Customer;
import java.util.Arrays;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
public class StartController {
    
    @Value("${index.msgapp}")
    private String msgapp;
    
    @GetMapping("/")
    public String start(Model model){
        log.info("Controller MVC Start");
        model.addAttribute("msgapp", msgapp);
        model.addAttribute("mensaje", "Mensaje desde el Controller...");
        Customer c = new Customer("12345", "Pepa Matinez", 3125678, "pepa@mail.com");
        model.addAttribute("customer", c);
        return("index");
    }
}
