package com.controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="cerrarSesion.htm")
public class cerrarSesionController {
    
    
    @RequestMapping(method = RequestMethod.GET)
    public String preparaForm(Model modelo,HttpServletRequest req) {             
             req.getSession().setAttribute("usuario", null);             
             return "redirect:inicio.htm";       
    }
}
