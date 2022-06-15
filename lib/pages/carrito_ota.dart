import 'package:flutter/material.dart';
import 'package:OTAKUMON/producto_provider.dart';
import 'package:provider/provider.dart';
import '../Herramientas/upBar_ota.dart';
import '../models/producto.dart';

class Carrito extends StatefulWidget {
//
@override
createState() => _Carrito();

}

class _Carrito extends State<Carrito> {
  
  @override
  Widget build(BuildContext context) {

    final productoProvider = Provider.of<ProductoProvider>(context);
    final List<Producto> listaProductos = productoProvider.listaProductos;

    
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductoProvider(), lazy: false,)
      ],
      child:Car(), 
      
    );
  }
  
}

class Car extends  StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final productoProvider = Provider.of<ProductoProvider>(context);
    final List<Producto> listaProductos = productoProvider.listaProductos;

    return MaterialApp(
      home:Scaffold(
        appBar: upBar(),
      )
    );
  }  


}
/*

Scaffold(
        appBar: upBar(),
        
      ),

body: Center(
         child: ListView.builder(
          itemCount: listaProductos.length,
          itemBuilder: (context, index) {
              return ListTile(title: Text('tituloxd'),);
            }
         ),
        ),
*/


//Text('si funciona'),


/*
appBar: upBar(),
      body: Center(
        children: ListView.builder(
          itemCount: listaProductos.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text('tituloxd'),);
            }
        ),
      ),
*/



















/*class Carrito extends StatelessWidget {
  const Carrito({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productoProvider = Provider.of<ProductoProvider>(context);
    final List<Producto> listaProductos = productoProvider.listaProductos;

    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: listaProductos.length,
            itemBuilder: (context, index) {
              return ListTile();
                  /*title: Text(
                    listaProductos[index].descripcion,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  subtitle: Text(
                    listaProductos[index].precio.toString(),//talves
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  leading: Icon(Icons.card_giftcard));*/
            }),
      ),
      /*floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, 'ruta_productos_form');
        },
        backgroundColor: Colors.red[400],
      ),*/
    );
  }
}*/

