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
@RequestMapping(value="editar.htm")
public class EditarProducto {    
    
    @RequestMapping(method = RequestMethod.GET)
    public String editarArticulo(Model modelo,HttpServletRequest hsr) {
        
        int id = Integer.parseInt(hsr.getParameter("id"));
        
        List<Categoria> categorias=LogocareDAO.getCategorias();
        
        Producto producto=LogocareDAO.getProductoDetalle(id);
        modelo.addAttribute("categoria", producto.getCategoria());
        modelo.addAttribute("producto", producto);
        
        return "editarProducto"; 
    }
    
}
