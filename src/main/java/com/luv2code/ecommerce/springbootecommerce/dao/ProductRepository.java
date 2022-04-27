package com.luv2code.ecommerce.springbootecommerce.dao;

import com.luv2code.ecommerce.springbootecommerce.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Integer> {
}
