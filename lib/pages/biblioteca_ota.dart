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
          children: <Widget>[
            ConfigUserProfile(config),
            ConfigGuard(config),
            ConfigCompras(config),
            ConfigConfig(config),
          ],
        ),
      ),
      bottomNavigationBar: downBar(inx: _selectedIndex,),
    ); 
  }
}


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



class ConfigGuard extends StatefulWidget {
  const ConfigGuard(Config config, {Key? key}) : super(key: key);
  
  @override
  _ConfigGuard createState() => _ConfigGuard(configPrin);
}

class _ConfigGuard extends State<ConfigGuard>{

  final Config config;

  _ConfigGuard(this.config);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('guardado'),
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