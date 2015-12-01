/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.dao.LogocareDAO;
import com.model.pojo.Categoria;
import com.model.pojo.Cliente;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author gino
 */
@Controller
@RequestMapping(value="administrador.htm")
public class AdministradorController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String preparaForm(Model modelo) {
        
        List<Categoria> categorias=LogocareDAO.getCategorias();
        modelo.addAttribute("categorias", categorias);
        
        return  "mantenimiento";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String procesaForm(Cliente bo, Model modelo, HttpServletRequest req,HttpServletResponse response) throws IOException {                      
        return "administradorVista";        
    }
    
    
    
    
}
