import 'dart:html';
import 'dart:js';
import 'package:OTAKUMON/models/publicacion.dart';
import 'package:OTAKUMON/models/publicacion_response.dart';
import 'package:OTAKUMON/providers/producto_provider.dart';
import 'package:OTAKUMON/providers/publicacion_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:OTAKUMON/Herramientas/downBar_ota.dart';
import 'package:OTAKUMON/Herramientas/upBar_ota.dart';
import 'package:provider/provider.dart';

import '../providers/publicacion_provider.dart';

class InicioScreen extends StatefulWidget {
  @override
  createState() => _InicioScreen();
}

class _InicioScreen extends State<InicioScreen> {
  // BARRA DE ICONOS INFERIORES
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final publicacionProvider = Provider.of<PublicacionProvider>(context);
    final List<Publicacion> listaPublicaciones =
        publicacionProvider.listaPublicaciones;

    return Scaffold(
      appBar: upBar(),
      // PUBLICACIONES TRAIDAS DESDE LA BASE DE DATOS
      body: Container(
        child: ListView.builder(
            itemCount: listaPublicaciones.length,
            // ???
            reverse: true,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(20),
            // ???
            itemBuilder: (context, index) {
              final reversedIndex = listaPublicaciones.length - 1 - index;
              final Publicacion = listaPublicaciones[reversedIndex];

              return Column(
                children: [
                  Container(
                    color: Color.fromARGB(118, 176, 210, 255),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                  "Usuario: " +
                                      listaPublicaciones[index].usuario123,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 25, 77, 145),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            )),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                              child: Text(
                                listaPublicaciones[index].descripcion,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 40)),
                ],
              );
            }),
      ),

      // BARRA DE ICONOS INFERIORES
      bottomNavigationBar: downBar(
        inx: _selectedIndex,
      ),
    );
  }
}

/* PULSA CTRL + F PARA BUSCAR EN EL CODIGO*/
