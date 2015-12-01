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
@RequestMapping(value="grabarProducto.htm")
public class GrabarProducto {
    
    @RequestMapping(method = RequestMethod.POST)
    public String grabarProducto(Model modelo,HttpServletRequest hsr) {
        
        int id = Integer.parseInt(hsr.getParameter("txtId"));
        
        List<Categoria> categorias=LogocareDAO.getCategorias();        
        Producto producto=LogocareDAO.getProductoDetalle(id);
        
      
        modelo.addAttribute("categorias", categorias);
        
        
        String nombre = hsr.getParameter("txtNombre");
        double precio = Double.parseDouble(hsr.getParameter("txtPrecio"));
        int stock = Integer.parseInt(hsr.getParameter("txtStock"));
        String descripcion = hsr.getParameter("txtDescripcion");
        
        Categoria c = LogocareDAO.getCategoria(id);
        
        Producto editado = new Producto(c, nombre, precio, stock, descripcion, nombre, producto.getListadeseos(), producto.getDetallepedidos());
        editado.setIdProducto(id);
        LogocareDAO.editarProducto(editado);
        
        
        return "mantenimiento"; 
    }
    
    
}
