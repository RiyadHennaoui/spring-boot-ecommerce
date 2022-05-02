package com.luv2code.ecommerce.springbootecommerce.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "customer")
@Getter
@Setter
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    private String email;

    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL)
    private Set<Order> orders = new HashSet<>();

    public void add(Order order){
        if (order != null){
            if( orders == null){
                orders = new HashSet<>();
            }

            order.setCustomer(this);
            orders.add(order);
        }
    }


}
