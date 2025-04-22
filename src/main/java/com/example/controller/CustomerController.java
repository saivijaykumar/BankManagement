package com.example.controller;


import com.example.model.Customer;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping("/customers")
public class CustomerController {

    private List<Customer> customerList = new ArrayList<>();

    @GetMapping
    public ResponseEntity<List<Customer>> getAllCustomers() {
        return ResponseEntity.ok(customerList);
    }

    @PostMapping
    public ResponseEntity<Customer> addCustomer(@RequestBody Customer customer) {
        customer.setId(UUID.randomUUID().toString());
        customerList.add(customer);
        return ResponseEntity.ok(customer);
    }
}

