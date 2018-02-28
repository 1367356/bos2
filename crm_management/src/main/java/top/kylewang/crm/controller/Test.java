package top.kylewang.crm.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Test {
    @RequestMapping("hello")
    @ResponseBody
    public String getString(){
        return"hello";
    }
}

