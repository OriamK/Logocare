/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.dao.LogocareDAO;
import com.model.pojo.Categoria;
import com.model.pojo.Producto;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="productosCategoriaEnlace.htm")
public class ProductosFromCategoriaController {
    @RequestMapping(method=RequestMethod.GET)
	public String setupForm(Model modelo,HttpServletRequest req){       
            
            /*
            //antes
        int categoria;
        try {                        
            categoria=Integer.parseInt(req.getParameter("categoriaId"));
            
            List<Producto> lista=LogocareDAO.getProductos(categoria);            
            modelo.addAttribute("productosFromCategoria",lista);                
            modelo.addAttribute("Categoria",LogocareDAO.getCategoria(categoria));                        
        } catch (Exception e) {
            e.printStackTrace();
        }
       return "productosFromCategoriaVista";
       // return "pruebaVista";
                    */
             int categoria;
        try {                        
            categoria=Integer.parseInt(req.getParameter("categoriaId"));
            List<Producto> productos=LogocareDAO.getProductos(categoria);   
            List<Categoria> categorias=LogocareDAO.getCategorias();    
            
            modelo.addAttribute("categorias", categorias);
            modelo.addAttribute("productos",productos);    
            modelo.addAttribute("categoria",LogocareDAO.getCategoria(categoria));
            modelo.addAttribute("idcategoria",categoria);                        
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "categoria";
       }
}
