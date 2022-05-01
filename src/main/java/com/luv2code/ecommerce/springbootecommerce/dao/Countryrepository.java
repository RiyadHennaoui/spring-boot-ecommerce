package com.luv2code.ecommerce.springbootecommerce.dao;

import com.luv2code.ecommerce.springbootecommerce.entity.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "countries", path = "countries")
public interface Countryrepository extends JpaRepository<Country, Integer> {


}
