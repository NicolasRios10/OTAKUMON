import 'dart:convert';

import 'package:OTAKUMON/models/producto.dart';

class ProductoResponse{
  List<Producto> productos;
  ProductoResponse({
    required this.productos
  });

   factory ProductoResponse.fromMap(Map<String, dynamic> json) => ProductoResponse(
    productos: List<Producto>.from(
      json["productos"].map((x) => Producto.fromMap(x))
    ),
  );

  factory ProductoResponse.fromJson(String str) => ProductoResponse.fromMap(json.decode(str));
}