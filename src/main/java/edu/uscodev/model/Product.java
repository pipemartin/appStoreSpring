package edu.uscodev.model;

import java.io.Serializable;
import javax.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "product")
public class Product implements Serializable{
    private static final long serialVersionUID = 1L;
    
    @Id
    @Basic(optional = false)
    @Column(name = "productId")
    private String productID;
    @Basic(optional = false)
    @Column(name = "productName")
    private String productName;
    @Basic(optional = false)
    @Column(name = "categoryId")
    private String categoryId;

    public Product(String productID, String productName, String categoryId) {
        this.productID = productID;
        this.productName = productName;
        this.categoryId = categoryId;
    }
    
   public Product() {
    }
}
