package com.luv2code.ecommerce.springbootecommerce.dto;

import com.luv2code.ecommerce.springbootecommerce.entity.Address;
import com.luv2code.ecommerce.springbootecommerce.entity.Customer;
import com.luv2code.ecommerce.springbootecommerce.entity.Order;
import com.luv2code.ecommerce.springbootecommerce.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;
}
