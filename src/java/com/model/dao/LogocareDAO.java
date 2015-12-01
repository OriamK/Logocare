/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import com.model.pojo.Administrador;
import com.model.pojo.Categoria;
import com.model.pojo.Cliente;
import com.model.pojo.Listadeseo;
import com.model.pojo.Producto;
import com.model.util.HibernateUtil;
import java.util.Date;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author gino
 */
public class LogocareDAO {

    public static boolean isAdministrador(Administrador ad) {
        List<Administrador> lista = null;
        try {
            Session sesion = HibernateUtil.getSessionFactory().openSession();
            String hql = "from Administrador p where p.user  = :pro_1 and p.password = :pro_2 ";
            Query query = sesion.createQuery(hql);
            query.setParameter("pro_1", ad.getUser());
            query.setParameter("pro_2", ad.getPassword());
            lista = query.list();
            sesion.close();

            System.out.println("size admin:" + lista.size());
            if (lista.size() == 1) {

                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public static List<Administrador> getAdministradores() {

        List<Administrador> lista = null;
        try {
            Session sesion = HibernateUtil.getSessionFactory().openSession();
            String hql = "from Administrador";
            Query query = sesion.createQuery(hql);
            lista = query.list();
            sesion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    public static List<Categoria> getCategorias() {

        List<Categoria> lista = null;
        try {
            Session sesion = HibernateUtil.getSessionFactory().openSession();
            String hql = "from Categoria";
            Query query = sesion.createQuery(hql);
            lista = query.list();
            sesion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    public static List<Producto> getProductos(int categoria) {
        List<Producto> lista = null;
        try {
            Session sesion = HibernateUtil.getSessionFactory().openSession();
            String hql = "from Producto p where p.categoria.idCategoria  = :pro_categoria  ";
            Query query = sesion.createQuery(hql);
            query.setParameter("pro_categoria", categoria);
            lista = query.list();
            sesion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return lista;
    }

    public static List<Listadeseo> getListaDeseo(int idCliente) {
        List<Listadeseo> lista = null;

        try {
            Session sesion = HibernateUtil.getSessionFactory().openSession();
            String hql = "from Listadeseo p where p.cliente.idCliente  = :pro_idCliente  ";
            Query query = sesion.createQuery(hql);
            query.setParameter("pro_idCliente", idCliente);
            lista = query.list();
            for (int i = 0; i < lista.size(); i++) {
                System.out.println("listadeseo:" + lista.get(i).getProducto().getNombre());
            }
            sesion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    public static Categoria getCategoria(int categoria) {
        List<Categoria> c = null;
        try {
            Session sesion = HibernateUtil.getSessionFactory().openSession();
            String hql = "from Categoria c where c.idCategoria  = :pro_categoria  ";
            Query query = sesion.createQuery(hql);
            query.setParameter("pro_categoria", categoria);
            c = query.list();
            sesion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c.get(0);
    }

    public static boolean RegistrarUsuario(Cliente cliente) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Transaction transaccion = session.beginTransaction();
            session.save(cliente);
            transaccion.commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean AnadirListaDeseo(Cliente cliente, Producto producto) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Transaction transaccion = session.beginTransaction();
            Listadeseo l = new Listadeseo();
            l.setCliente(cliente);
            l.setProducto(producto);
            l.setFecha(new Date());
            session.save(l);
            transaccion.commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean Login(String user, String pass) {
        try {
            Cliente cliente = LogocareDAO.ObtenerUsuarioPorCorreo(user);
            return cliente.getContrasena().equals(pass);
        } catch (Exception e) {
            return false;
        }
    }

    public static Cliente ObtenerUsuarioPorCorreo(String correo) {
        List<Cliente> lista = null;
        try {
            Session sesion = HibernateUtil.getSessionFactory().openSession();
            String hql = "from Cliente p where p.correo  = :pro_correo  ";
            Query query = sesion.createQuery(hql);
            query.setParameter("pro_correo", correo);
            lista = query.list();
            sesion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista.get(0);

    }

    public static Producto getProductoDetalle(int idProducto) {
        Producto p = null;
        try {
            Session sesion = HibernateUtil.getSessionFactory().openSession();
            p = (Producto) sesion.get(Producto.class, idProducto);

            sesion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    public static void editarProducto(Producto p) {

        Session session = HibernateUtil.getSessionFactory().openSession();

        Transaction tx = null;
        try {
            
            tx = session.beginTransaction();

            session.update(p);

            tx.commit();
        }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 
      }finally {
         session.close(); 
      }

    }
    

}
