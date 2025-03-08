package com.example.messagesystem;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class controller {

    @GetMapping("/test")
    public Map<String,Object> getSenderCategories(){
        Map<String,Object> result = new HashMap<>();
        result.put("resut", 200);
        result.put("resutMessage", "Success");
        return result;
    }
}
