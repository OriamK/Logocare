package com.model.pojo;
// Generated 5/11/2015 05:15:35 PM by Hibernate Tools 4.3.1



/**
 * Detallepedido generated by hbm2java
 */
public class Detallepedido  implements java.io.Serializable {


     private int idDetallePedido;
     private Pedido pedido;
     private Producto producto;
     private String cantidad;

    public Detallepedido() {
    }

	
    public Detallepedido(int idDetallePedido, Pedido pedido, Producto producto) {
        this.idDetallePedido = idDetallePedido;
        this.pedido = pedido;
        this.producto = producto;
    }
    public Detallepedido(int idDetallePedido, Pedido pedido, Producto producto, String cantidad) {
       this.idDetallePedido = idDetallePedido;
       this.pedido = pedido;
       this.producto = producto;
       this.cantidad = cantidad;
    }
   
    public int getIdDetallePedido() {
        return this.idDetallePedido;
    }
    
    public void setIdDetallePedido(int idDetallePedido) {
        this.idDetallePedido = idDetallePedido;
    }
    public Pedido getPedido() {
        return this.pedido;
    }
    
    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }
    public Producto getProducto() {
        return this.producto;
    }
    
    public void setProducto(Producto producto) {
        this.producto = producto;
    }
    public String getCantidad() {
        return this.cantidad;
    }
    
    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }




}


