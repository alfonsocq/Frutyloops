package com.fruityloops.us.controladores;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fruityloops.us.Item;
@Controller 
public class ControladorItem {
	
    @RequestMapping("/")
    public String index(Model model) {
        
        ArrayList<Item> fruits = new ArrayList<Item>();
        fruits.add(new Item("Kiwi", 1.5));
        fruits.add(new Item("Mango", 2.0));
        fruits.add(new Item("Bayas de Goji", 4.0));
        fruits.add(new Item("Guayava", .75));
        model.addAttribute("fruitsFromMyController", fruits);
        // Agrega frutas a tu modelo de vista aquí
        
        return "index.jsp";
    }
}
