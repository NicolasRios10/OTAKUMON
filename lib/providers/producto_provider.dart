//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:OTAKUMON/models/producto_response.dart';
import '../models/producto.dart';
import 'package:http/http.dart' as http;

class ProductoProvider extends ChangeNotifier {
  String _baseUrl = '192.168.0.19:9000';
// String _baseUrl = '192.168.3.63:9000';

  List<Producto> listaProductos = [];

  ProductoProvider() {
    print("ingresando a producto Provider");
    this.getOnProductoList();
  }

  getOnProductoList() async {
    var url = Uri.http(_baseUrl, '/api/productos', {});
    final response = await http.get(url);
    print(response.body);
    final productoResponse = ProductoResponse.fromJson(response.body);
    listaProductos = productoResponse.productos;
    notifyListeners();
  }
}
