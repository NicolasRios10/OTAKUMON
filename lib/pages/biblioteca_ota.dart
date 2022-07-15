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
  // ... HASTA AQUI)
// --- RUTAS ---

  final Config config = configPrin;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: upBar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            ConfigUserProfile(config),
            ConfigThree(config),
            ConfigCompras(config),
            ConfigConfig(config),
          ],
        ),
      ),
      bottomNavigationBar: downBar(inx: _selectedIndex,),
    ); 
  }
}

// EL PERFIL
class ConfigUserProfile extends StatefulWidget {
  const ConfigUserProfile(Config config, {Key? key}) : super(key: key);
  
  @override
  State<ConfigUserProfile> createState() => _ConfigUserProfile(configPrin);
}

class _ConfigUserProfile extends State<ConfigUserProfile>{

  final Config config;

  _ConfigUserProfile(this.config);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.pushNamed(context, 'carrito_ota');
      },
      leading: Icon(Icons.supervised_user_circle),
      title: Text('perfil'),
      trailing: Icon(Icons.camera_front_outlined),
    );
  }
}





// LA BARRA DE TRES CONFIGURACIONES LATERALES

class ConfigThree extends StatefulWidget {
  const ConfigThree(Config config, {Key? key}) : super(key: key);
  
  @override
  _ConfigThree createState() => _ConfigThree(configPrin);
}

class _ConfigThree extends State<ConfigThree>{

  final Config config;
  _ConfigThree(this.config);


  


  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
              ThreeItem(context, Icons.system_update_tv_rounded, 'guardar', 'carrito_ota'),
            ],
          ),
    );
  }

Widget ThreeItem(BuildContext context, IconData icon, String nombre, String ruta) {
    return Card(
      child: Center(
        child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, ruta);
              },
              leading: Icon(icon),
              title: Text(nombre),
            ),
      ),
    );
  }
}



class ConfigCompras extends StatefulWidget {
  const ConfigCompras(Config config, {Key? key}) : super(key: key);
  
  @override
  _ConfigCompras createState() => _ConfigCompras(configPrin);
}

class _ConfigCompras extends State<ConfigCompras>{

  final Config config;

  _ConfigCompras(this.config);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Compras'),
    );
  }
}



class ConfigConfig extends StatefulWidget {
  const ConfigConfig(Config config, {Key? key}) : super(key: key);
  
  @override
  _ConfigConfig createState() => _ConfigConfig(configPrin);
}

class _ConfigConfig extends State<ConfigConfig>{

  final Config config;

  _ConfigConfig(this.config);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Configuracion'),
    );
  }
}