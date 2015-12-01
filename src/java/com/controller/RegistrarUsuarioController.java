package com.controller;
import com.model.dao.LogocareDAO;
import com.model.pojo.Cliente;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "registrarUsuario.htm")
public class RegistrarUsuarioController {

    @RequestMapping(method = RequestMethod.GET)
    public String preparaForm(Model modelo) {
        modelo.addAttribute("cliente", new Cliente());
        return "registrarVista";
    }
    @RequestMapping(method = RequestMethod.POST)
    public String procesaForm(Cliente bo, Model modelo,HttpServletRequest req) {
        System.out.println(bo.getNombre());
        System.out.println(bo.getApePat());
        System.out.println(bo.getApeMat());
        if(LogocareDAO.RegistrarUsuario(bo))
        {           
            HttpSession misession = req.getSession(true);                        
            misession.setAttribute("usuario",LogocareDAO.ObtenerUsuarioPorCorreo(bo.getCorreo()));                        
            System.out.println("esta bien");            
            return "redirect:inicio.htm";                         
        }
        else
        {
            //bo.setNombre("no registrado");           
            return "registrarVista";
        }        
    }
}
