package edu.uscodev.controller;

import edu.uscodev.model.Product;
import edu.uscodev.service.ProductService;

import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@Slf4j
public class ProductController {
    @Autowired
    ProductService productservice;
    
    @GetMapping("/product")
    public String list(Model model) {
        List products = productservice.findAllProduct();
        model.addAttribute("products", products);
        
        return "listProduct";
    }
    
    @GetMapping("/addproduct")
    public String routeAdd(Product product) {
        return "editproduct";
    }
    
    @PostMapping("/saveproduct")
    public String saveCustomer(Product product) {
        log.info(" UP ID:"+product.getProductID());
        productservice.insertProduct(product);
        return "redirect:/product";
    }
    
    @GetMapping("/editproduct/{productID}")
    public String editCustomer(Product product, Model model){
        product = productservice.findProductbyId(product);
        model.addAttribute("product", product);
        return "editproduct";
    }
    
    @GetMapping("/removeproduct")
    public String removeCustomer (Product product){
        productservice.deleteProduct(product);
        return "redirect:/product";
    }
}
