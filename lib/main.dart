import 'package:OTAKUMON/pages/biblioteca_ota.dart';
import 'package:OTAKUMON/pages/imagenes_ota.dart';
import 'package:flutter/material.dart';
import 'package:OTAKUMON/pages/agregar_ota.dart';
import 'package:OTAKUMON/pages/busqueda_ota.dart';
import 'package:OTAKUMON/pages/inicio_ota.dart';
import 'package:OTAKUMON/pages/login_py.dart';
import 'package:OTAKUMON/pages/registro_screens.dart';
import 'package:OTAKUMON/providers/publicacion_provider.dart';
import 'package:provider/provider.dart';

import 'pages/carrito_ota.dart';
import 'providers/producto_provider.dart';

// import 'package:OTAKUMON/app.dart';

// hacia la clase "MyApp"
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PublicacionProvider(), lazy: false),
          ChangeNotifierProvider(create: (_) => ProductoProvider(), lazy: false),
          // ...
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'OTAKUMON',
          initialRoute: 'ruta_login_2',
          routes: {
            'carrito_ota': (_) => Carrito(),
            'registro_screens': (_) => Registro(),
            'ruta_login_2': (_) => LoginPy(),
            'inicio_ota': (_) => InicioScreen(),
            'agregar_ota': (_) => SubirContenidoScreen(),
            'busqueda_ota': (_) => busqueda_pag(),
            'biblioteca_ota': (_) => biblioteca(),
            'imagenes_ota': (_) => SplashScreen(),
          },
        ));
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
