/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.dao.LogocareDAO;
import com.model.pojo.Categoria;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import com.model.pojo.Administrador;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="inicio.htm")
public class CategoriaController {
   @RequestMapping(method=RequestMethod.GET)
	public String setupForm(Model modelo, HttpServletRequest req){
            try {
            List<Categoria> lista=LogocareDAO.getCategorias();  
                System.out.println("administradores");
            List<Administrador> lista1=LogocareDAO.getAdministradores();  
                for (int i = 0; i < lista1.size(); i++) {
                    System.out.println(lista1.get(i).getUser());
                    System.out.println(lista1.get(i).getPassword());
                }
            
            modelo.addAttribute("categorias", lista);
        } catch (Exception e) {
            e.printStackTrace();
        }
		return "index";
        //    return "IngresarVista";
	}
	 
}
