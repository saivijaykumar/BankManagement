package com.example.controller;


import com.example.model.Account;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping("/accounts")
public class AccountController {

    private List<Account> accountList = new ArrayList<>();

    @GetMapping
    public ResponseEntity<List<Account>> getAllAccounts() {
        return ResponseEntity.ok(accountList);
    }

    @PostMapping
    public ResponseEntity<Account> addAccount(@RequestBody Account account) {
        account.setAccountId(UUID.randomUUID().toString());
        accountList.add(account);
        return ResponseEntity.ok(account);
    }
}

