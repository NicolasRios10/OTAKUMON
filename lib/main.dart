import 'package:OTAKUMON/pages/biblioteca_ota.dart';
import 'package:OTAKUMON/pages/home.dart';
import 'package:OTAKUMON/pages/imagenes_ota.dart';
import 'package:flutter/material.dart';
import 'package:OTAKUMON/pages/agregar_ota.dart';
import 'package:OTAKUMON/pages/busqueda_ota.dart';
import 'package:OTAKUMON/pages/inicio_ota.dart';
import 'package:OTAKUMON/pages/login_py.dart';
import 'package:OTAKUMON/pages/registro_screens.dart';

//import 'pages/carrito_ota.dart';

// import 'package:OTAKUMON/app.dart';

// hacia la clase "MyApp"
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OTAKUMON',
      initialRoute: 'ruta_login_2',
      routes: {
//        'carrito_ota': (_) => Carrito(),
        'registro_screens': (_) => Registro(),
        'ruta_login_2': (_) => LoginPy(),
        'home_ota': (_) => Home(),
        'agregar_ota': (_) => SubirContenidoScreen(),
        'busqueda_ota': (_) => busqueda_pag(),
        'biblioteca_ota': (_) => biblioteca(),
        'imagenes_ota': (_) => SplashScreen(),
      },
    );
  }
}
//ruta_subir_contenido
//SubirContenidoScreen




// class Myapp extends StatelessWidget {
//   const Myapp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'titulo principal',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('titulo principal'),
//         ),
//       ),
//     );
//   }
// }
