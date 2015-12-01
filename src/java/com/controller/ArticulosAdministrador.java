
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
@RequestMapping(value="articulosAdm.htm")
public class ArticulosAdministrador {
    
    @RequestMapping(method = RequestMethod.GET)
    public String listarArticulos(Model modelo,HttpServletRequest hsr) {
        
        int id = Integer.parseInt(hsr.getParameter("id"));
        
        List<Categoria> categorias=LogocareDAO.getCategorias();
        
        List<Producto> productos=LogocareDAO.getProductos(id);
        modelo.addAttribute("categorias", categorias);
        modelo.addAttribute("productos", productos);
        modelo.addAttribute("id",id);
        
        return "mantenimiento"; 
    }
    
}
