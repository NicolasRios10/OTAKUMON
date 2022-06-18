import 'dart:convert';

class Producto {
    Producto({
        required this.id,
        required this.productoId,
        required this.descripcion,
        required this.precio,
    });

    String id;
    int productoId;
    String descripcion;
    double precio;

    factory Producto.fromJson(String str) => Producto.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Producto.fromMap(Map<String, dynamic> json) => Producto(
        id: json["_id"],
        productoId: json["productoID"],
        descripcion: json["descripcion"],
        precio: json["precio"],
    );

    Map<String, dynamic> toMap() => {
        "_id": id,
        "productoID": productoId,
        "descripcion": descripcion,
        "precio": precio,
    };
}
