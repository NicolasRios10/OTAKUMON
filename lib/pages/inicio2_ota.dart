import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:OTAKUMON/models/inicioproducto.dart';
import 'package:OTAKUMON/providers/inicioproducto_provider.dart';

import '../Herramientas/upBar_ota.dart';
import '../Herramientas/downBar_ota.dart';

class InicioProductoScreen extends StatefulWidget {
  const InicioProductoScreen({Key? key}) : super(key: key);

  @override
  State<InicioProductoScreen> createState() => _InicioProductoScreenState();
}

class _InicioProductoScreenState extends State<InicioProductoScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final inicioproductoProvider = Provider.of<InicioproductoProvider>(context);
    final List<Inicioproducto> listaInicioproductos =
        inicioproductoProvider.listaInicioproductos;

    return Scaffold(
      appBar: upBar(),
      // SingleChildScrollView ???
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
            Container(
              width: double.infinity,
              height: 350,
              color: Colors.white,
              child: Swiper(
                itemCount: listaInicioproductos.length,
                layout: SwiperLayout.STACK,
                itemWidth: 200,
                itemHeight: 350,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      child: Column(
                    children: [
                      Image(
                          image:
                              NetworkImage(listaInicioproductos[index].imagen)),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Center(
                          child: Text(listaInicioproductos[index].titulo,
                              /* "probandocajadetextosinespaciosenblanco" */
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 25, 77, 145))),
                        ),
                      ),
                    ],
                  ));

                  // _cardInicioProducto(listaInicioproductos[index]);
                },
              ),
            ),
            // LISTA DE PRODUCTOS IMAGENES
            GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 225,
                  // PROPORCION DE LA FORMA: ANCHO / ALTURA
                  childAspectRatio: 2 / 2.8,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: listaInicioproductos.length,
              itemBuilder: (BuildContext count, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Image(
                      // imagen que se encuentra publicada en el internet
                      image: NetworkImage(listaInicioproductos[index].imagen)),
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: downBar(
        inx: _selectedIndex,
      ),
    );
  }
}
