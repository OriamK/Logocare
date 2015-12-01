
package com.controller;

import com.model.dao.LogocareDAO;
import com.model.pojo.Administrador;
import com.model.pojo.Cliente;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author gino
 */
@Controller
@RequestMapping(value = "IniciarSesion.htm")
public class IniciarSesionController {

    @RequestMapping(method = RequestMethod.GET)
    public String preparaForm(Model modelo) {
        modelo.addAttribute("cliente", new Cliente());
        //return "iniciarSesionVista";
        return  "IngresarVista";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String procesaForm(Cliente bo, Model modelo, HttpServletRequest req,HttpServletResponse response) throws IOException {
                
        if (LogocareDAO.Login(bo.getCorreo(), bo.getContrasena())) {                        
            HttpSession misession = req.getSession(true);                        
            misession.setAttribute("usuario",LogocareDAO.ObtenerUsuarioPorCorreo(bo.getCorreo()));                                    
            return "redirect:inicio.htm";             
        } else {            
            if(LogocareDAO.isAdministrador(new Administrador(bo.getCorreo(),bo.getContrasena())))
            {
            return "redirect:administrador.htm";    
            }
            else
            {
                bo.setCorreo("");
                bo.setContrasena("");
            
            }
            return "IngresarVista";
        }        
    }
}
