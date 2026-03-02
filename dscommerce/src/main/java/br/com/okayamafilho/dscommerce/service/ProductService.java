package br.com.okayamafilho.dscommerce.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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

    @Transactional(readOnly = true)
    public Page<ProductDTO> findAll(Pageable pageable) {
        Page<Product> result = repository.findAll(pageable);
        // return result.stream().map(x -> new ProductDTO(x)).toList();
        return result.map(x -> new ProductDTO(x));
    }
}
