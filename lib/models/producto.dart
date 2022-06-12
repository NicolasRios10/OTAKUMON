import 'dart:convert';

class Producto {

  int productoID;
  String descripcion;
  String precio;

  Producto({
    required this.productoID,
    required this.descripcion,
    required this.precio
  });

  factory Producto.fromMap(Map<String, dynamic> json) => Producto(
    productoID : json ["productoID"],
    descripcion : json ["descripcion"],
    precio : json ["precio"]
  );

  factory Producto.fromJson(String str) => Producto.fromMap(json.decode(str));
}