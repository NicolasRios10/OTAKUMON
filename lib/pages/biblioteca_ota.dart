import 'package:flutter/material.dart';
import 'package:OTAKUMON/Herramientas/upBar_ota.dart';
import '../Herramientas/downBar_ota.dart';


class biblioteca extends StatefulWidget {
  @override
  createState() => _biblioteca();
}

class _biblioteca extends State<biblioteca> {
  // --- RUTAS ---
  // PARA RUTAS (COPIAR Y PEGAR ANTES DE "@override" DESDE AQUI ...
  // en _selectedIndex coloca un numero entero (del 0 al 3) para seleccionar el icono
  int _selectedIndex = 3;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // ... HASTA AQUI)
// --- RUTAS ---

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: upBar(),
      body: Center(
        child: Text('esta es la segunda pantalla de prueba de biblioteca'),
      ),
      // --- RUTAS ---
      // AQUI ESTA LA BARRA DE ICONOS INFERIORES (copiar y pegar desde aqui...
      bottomNavigationBar: downBar(inx: _selectedIndex,),
      // HASTA AQUI ...
// --- RUTAS ---
    );
  }
}