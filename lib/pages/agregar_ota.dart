import 'dart:html';
import 'dart:js';
import 'package:OTAKUMON/models/publicacion.dart';
import 'package:OTAKUMON/providers/publicacion_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:OTAKUMON/Herramientas/upBar_ota.dart';
import 'package:provider/provider.dart';
import '../Herramientas/downBar_ota.dart';

class SubirContenidoScreen extends StatefulWidget {
  @override
  createState() => _SubirContenidoScreen();
}

class _SubirContenidoScreen extends State<SubirContenidoScreen> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final publicacionProvider = Provider.of<PublicacionProvider>(context);
    final txtNombre = TextEditingController();
    final txtContenido = TextEditingController();
    return Scaffold(
      appBar: upBar(),
      body: Container(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Center(
                    child: Text('Nueva publicacion',
                        style: TextStyle(
                            color: Color.fromARGB(255, 25, 77, 145),
                            fontWeight: FontWeight.bold,
                            fontSize: 30)))),

            // FORMULARIO PARA DESCRIBIR CONTENIDO
            Container(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Nombre del usuario',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 25, 77, 145),
                                  width: 2),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        maxLines: 1,
                        controller: txtNombre,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Ingrese su nombre';
                          }
                        },
                        enableInteractiveSelection: true,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                      TextFormField(
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText:
                                'Espacio para que el usuario pueda escribir...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 25, 77, 145),
                                  width: 2),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        maxLines: 6,
                        controller: txtContenido,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Ingrese una descripcion para publicar';
                          }
                        },
                        enableInteractiveSelection: true,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          child: const Text('Adjuntar archivos'),
                          style: TextButton.styleFrom(
                            primary: Color.fromARGB(255, 255, 255, 255),
                            backgroundColor: Color.fromARGB(255, 25, 77, 145),
                          ),
                          // ACCION DESCONOCIDA (el boton no hace nada)
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          children: [
                            // BOTON CANCELAR
                            ElevatedButton(
                                child: const Text('Cancelar'),
                                style: TextButton.styleFrom(
                                    primary: Color.fromARGB(255, 255, 255, 255),
                                    backgroundColor:
                                        Color.fromARGB(255, 25, 77, 145)),
                                onPressed: () {
                                  // LINEA DE CODIGO PARA IR HACIA ATRAS
                                  Navigator.pop(context);
                                }),
                            // ESPACIADO PARA ALEJAR EL SIGUIENTE ELEMENTO DE FORMA HORIZONTAL LO MAS LEJOS POSIBLE
                            Spacer(),
                            // BOTON PUBLICAR
                            ElevatedButton(
                                child: const Text('Publicar'),
                                style: TextButton.styleFrom(
                                    primary: Color.fromARGB(255, 255, 255, 255),
                                    backgroundColor:
                                        Color.fromARGB(255, 25, 77, 145)),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text('Espere un momento...')));
                                    var publicacion = Publicacion(
                                        id: '',
                                        publicacionId: 0,
                                        descripcion: txtContenido.text,
                                        usuario123: txtNombre.text);
                                    publicacionProvider
                                        .savePublicacion(publicacion);
                                    Navigator.pushReplacementNamed(
                                        context, 'inicio_ota');
                                  }
                                }),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
      // AQUI ESTA LA BARRA DE ICONOS INFERIORES (copiar y pegar desde aqui...
      bottomNavigationBar: downBar(inx: _selectedIndex),
    );
  }
}

/* 
PULSA CTRL + F PARA BUSCAR EN EL CODIGO
PARA INSERTAR LA BARRA DE MENU EN UNA PANTALLA, PRESIONA CTRL + F Y ESCRIBE "--- RUTAS ---" PARA COPIAR Y PEGAR EL CODIGO
*/

/*
LINKS DE AYUDA
https://docs.flutter.dev/development/ui/layout
https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
https://medium.com/comunidad-flutter/flutter-textfield-una-vista-detallada-1833c4488785
https://stackoverflow.com/questions/63557096/how-to-use-a-named-routes-in-a-bottomnavigationbar-in-flutter

https://stackoverflow.com/questions/62665826/remove-default-padding-or-margin-on-bottom-navigation-bar-from-flutter

https://programmerclick.com/article/72431821094/
https://programmerclick.com/article/2173416205/

https://esflutter.dev/docs/cookbook/design/fonts
https://stackoverflow.com/questions/53141752/set-the-space-between-elements-in-row-flutter
https://esflutter.dev/docs/cookbook/navigation/navigation-basics
*/