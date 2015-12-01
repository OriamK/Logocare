
package com.controller;

import com.model.dao.LogocareDAO;
import com.model.pojo.Producto;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "producto.htm")
public class ProductoDetalleController {

    @RequestMapping(method = RequestMethod.GET)
    public String setupForm(Model modelo, HttpServletRequest hsr) {

        int id = Integer.parseInt(hsr.getParameter("idProducto"));
        try {
            Producto p = LogocareDAO.getProductoDetalle(id);
            modelo.addAttribute("producto", p);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return "pruebaDetalleVista";
    }
}
