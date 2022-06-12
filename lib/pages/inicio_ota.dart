import 'dart:html';
import 'dart:js';
// quinto intento
// https://docs.flutter.dev/development/ui/layout
// https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:OTAKUMON/Herramientas/downBar_ota.dart';
import 'package:OTAKUMON/Herramientas/upBar_ota.dart';



/*
ESTRUCTURA DE LA APLICACION
Container (
  -> Column (
    1> Container (
      -> Center(''' titulo de la pantalla ''')
    )
    2> Container
      -> ''' formulario '''
    3> Container
      -> iconos de la barra inferior
  )
)
*/

class InicioScreen extends StatefulWidget {
  @override
  createState() => _InicioScreen();
}

class _InicioScreen extends State<InicioScreen> {
  // Color _titulo = Color.fromARGB(255, 5, 148, 173);
  final _formKey = GlobalKey<FormState>();

int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    final txtContenido = TextEditingController();
    // throw UnimplementedError();
    return Scaffold(
      appBar: upBar(),
      body: Container(
        child: Column(
          children: [
            // TITULO DE LA APLICACION 'nueva publicacion'
            Container(
                // aplica un espaciado a su contenido
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Text('Nueva publicacion',
                        style: TextStyle(
                            // color de texto en formato RGBA
                            color: Color.fromARGB(255, 25, 77, 145),
                            // tamaño de texto
                            fontSize: 30)))),

            // FORMULARIO PARA DESCRIBIR CONTENIDO
            Container(),
          ],
        ),
      ),

      // AQUI ESTA LA BARRA DE ICONOS INFERIORES (copiar y pegar)
      bottomNavigationBar: downBar(inx: _selectedIndex,),
    );
    // Column(
    // alineado superior
    // mainAxisAlignment: MainAxisAlignment.start,
    // children: [
    // ],
    //   ),
    // ));
    // body: Center(
    //   child: Column(children: <Widget>[
    //     const Text(
    //       'NUEVA 2',
    //       style: Color.fromRGBO(255, 0, 0, 1),
    //     )
    //   ]),
    // )
  }
}




/* PULSA CTRL + F PARA BUSCAR EN EL CODIGO*/
