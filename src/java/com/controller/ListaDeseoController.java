package com.controller;

import com.model.dao.LogocareDAO;
import com.model.pojo.Cliente;
import com.model.pojo.Listadeseo;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "listaDeseo.htm")
public class ListaDeseoController {

    @RequestMapping(method = RequestMethod.GET)
    public String setupForm(Model modelo, HttpServletRequest req) {
        Cliente c = (Cliente)req.getSession().getAttribute("usuario");
        List<Listadeseo> lista=LogocareDAO.getListaDeseo(c.getIdCliente());
        
        //List<Listadeseo> lista = LogocareDAO.getListaDeseo(id);
        if (lista != null) {            
            modelo.addAttribute("deseo", lista);
        }    
        return "listaDeseoVista";
    }
}
