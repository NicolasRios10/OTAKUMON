import 'package:OTAKUMON/pages/registro_screens.dart';
import 'package:flutter/material.dart';
import 'package:OTAKUMON/Herramientas/upBar_ota.dart';
import '../Herramientas/downBar_ota.dart';
import '../Other/config.dart';


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



  final Config config = configPrin;
  // ... HASTA AQUI)
// --- RUTAS ---

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: upBar(),
      body: Container(
        child: ListView(
          children: <widget>[
            ConfigUserProfile(config),
            ConfigGen(config),
          ],
        ),
      ),
      bottomNavigationBar: downBar(inx: _selectedIndex,),
    ); 
  }
}


class ConfigUserProfile extends StatefulWidget {
  @override
  createState() => _ConfigUserProfile();
}
class _ConfigUserProfile extends State<ConfigUserProfile>{

final Config config;

condi

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

