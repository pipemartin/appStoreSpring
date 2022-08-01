package edu.uscodev.service;

import edu.uscodev.model.Product;
import edu.uscodev.repository.ProductRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductServiceImp implements ProductService{
    @Autowired
    private ProductRepository productRepository;

    @Override
    @Transactional(readOnly = true)
    public List<Product> findAllProduct() {
         return (List<Product>) productRepository.findAll();
    }

    @Override
    public List<Product> findAllProduct(String filtro) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public Product findProductbyId(Product product) {
       return productRepository.findById(product.getProductID()).orElse(null);
    }

    @Override
    public void insertProduct(Product product) {
        productRepository.save(product);
    }

    @Override
    public void deleteProduct(Product product) {
        productRepository.delete(product);
    }

    @Override
    public void updateProduct(Product product) {
       productRepository.save(product); 
    }
}
