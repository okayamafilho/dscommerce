package br.com.okayamafilho.dscommerce.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.okayamafilho.dscommerce.entities.Product;
import br.com.okayamafilho.dscommerce.repositories.ProductRepository;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
@RequestMapping(value = "/products")
public class ProductController {
   
    @Autowired
    private ProductRepository repository;

    @GetMapping
    public String teste() {
        Optional<Product> result = repository.findById(1L);
        Product product = result.get();
        return product.getName();
    }
}
