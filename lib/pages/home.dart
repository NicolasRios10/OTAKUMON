import 'package:flutter/material.dart';

import 'package:OTAKUMON/Herramientas/downBar_ota.dart';
import 'package:OTAKUMON/Herramientas/upBar_ota.dart';

import '../shared/screenTitle.dart';
import '../shared/tripList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  

  //final _formKey = GlobalKey<FormState>();

int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: upBar(),
        body: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/logo.jpg"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topLeft),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30),
                SizedBox(
                  height: 160,
                  child: ScreenTitle(text: 'Otakumon'),
                ),
                Flexible(
                  child: TripList(),
                )
                //Sandbox(),
              ],
            )),
            bottomNavigationBar: downBar(inx: _selectedIndex,),
            );
  }
}
