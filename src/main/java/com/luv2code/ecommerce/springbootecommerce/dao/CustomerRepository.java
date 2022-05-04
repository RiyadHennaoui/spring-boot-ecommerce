package com.luv2code.ecommerce.springbootecommerce.dao;

import com.luv2code.ecommerce.springbootecommerce.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

    Customer findByEmail(String theEmail);

}
