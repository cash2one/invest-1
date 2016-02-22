package com.sam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by leo on 22/02/2016.
 */
@Controller
@RequestMapping("/investments")
public class InvestmentsController {

    @RequestMapping(value = "/index",method = RequestMethod.GET )
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/invdetail", method = RequestMethod.GET)
    public String invdetail(){

        return "invdetail";
    }
}
