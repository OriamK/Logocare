
package com.controller;

import com.model.dao.LogocareDAO;

import com.model.pojo.Cliente;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="anadirListaDeseo.htm")
public class anadirListaDeseoController {
       @RequestMapping(method=RequestMethod.GET)
	public String setupForm(Model modelo, HttpServletRequest req){
            try {
                System.out.println("producto recibido"+req.getParameter("producto"));
                System.out.println("usuario :"+req.getSession().getAttribute("usuario"));
                LogocareDAO.AnadirListaDeseo((Cliente) req.getSession().getAttribute("usuario"), LogocareDAO.getProductoDetalle(Integer.parseInt(req.getParameter("producto"))));
        } catch (Exception e) {
            e.printStackTrace();
        }
		return "redirect:producto.htm?idProducto="+req.getParameter("producto");
	}
}
