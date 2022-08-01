
package edu.uscodev.repository;

import edu.uscodev.model.Product;
import org.springframework.data.repository.CrudRepository;
      
public interface ProductRepository extends CrudRepository<Product, String>{
    
}
