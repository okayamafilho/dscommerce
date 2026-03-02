package br.com.okayamafilho.dscommerce.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.okayamafilho.dscommerce.dto.ProductDTO;
import br.com.okayamafilho.dscommerce.entities.Product;
import br.com.okayamafilho.dscommerce.repositories.ProductRepository;

@Service
public class ProductService {

    @Autowired
    // private ProductRepository repository;
    private ProductRepository repository;

    @Transactional(readOnly = true)
    public ProductDTO findById(Long id) {
        // Optional<Product> result = repository.findById(id);
        Product product = repository.findById(id).get();
        return new ProductDTO(product);
    }
}
