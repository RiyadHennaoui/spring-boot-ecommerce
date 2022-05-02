package com.luv2code.ecommerce.springbootecommerce.service;

import com.luv2code.ecommerce.springbootecommerce.dto.Purchase;
import com.luv2code.ecommerce.springbootecommerce.dto.PurchaseResponse;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);

}
