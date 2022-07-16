import 'dart:html';
import 'dart:js';
// quinto intento
// https://docs.flutter.dev/development/ui/layout
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:OTAKUMON/Herramientas/downBar_ota.dart';
import 'package:OTAKUMON/Herramientas/upBar_ota.dart';


class PhotoItem {
  final String image;
  final String name;
  PhotoItem(this.image, this.name);
}

class RouteOne extends StatefulWidget {
  @override
  createState() => _RouteOne();
}


class _RouteOne extends State<RouteOne> {
  final _formKey = GlobalKey<FormState>();


  int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

  final List<PhotoItem> _items = [
    PhotoItem(
        "https://m.media-amazon.com/images/I/81sqMtBYOHS._AC_SL1500_.jpg",
        "Jujutsu katisen"),
    PhotoItem(
        "https://pbs.twimg.com/media/FMdBsrGXsAQGxQ0?format=jpg&name=4096x4096",
        "komisan"),
    PhotoItem(
        "https://static.wixstatic.com/media/badb34_1eeeb026dcaf4c9f8f85ea9eda88274f~mv2.png/v1/fill/w_1000,h_1422,al_c,usm_0.66_1.00_0.01/badb34_1eeeb026dcaf4c9f8f85ea9eda88274f~mv2.png",
        "anime"),
    PhotoItem(
        "https://images-na.ssl-images-amazon.com/images/I/71-WBN3FCBL._AC_SL1280_.jpg",
        "Anime"),
    PhotoItem(
        "https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/11/23/3946289368.jpeg",
        "anime"),
    PhotoItem(
        "https://images-na.ssl-images-amazon.com/images/I/81MLf-pgXrL.jpg",
        "anime"),
    PhotoItem(
        "https://i.ebayimg.com/images/g/nhMAAMXQya1Q8h6k/s-l500.jpg",
        "naruto"),
    PhotoItem(
        "https://img.assinaja.com/assets/tZ/050/img/270004_520x520.jpg",
        "pelon"),
    PhotoItem(
        "https://images-na.ssl-images-amazon.com/images/I/81TLeOxDprL.jpg",
        "anime"),
    PhotoItem(
        "https://i.ebayimg.com/images/g/tw8AAOSwWi1f~uUU/s-l500.jpg",
        "anime"),
    PhotoItem(
        "https://m.media-amazon.com/images/I/81D0Y6+qV9L._SL1500_.jpg",
        "goku"),
    PhotoItem(
        "https://m.media-amazon.com/images/I/91oRmZ53OBL._AC_SY679_.jpg",
        "pulpo"),
    PhotoItem(
        "https://m.media-amazon.com/images/I/71uHZO5ChkL._AC_SY679_.jpg",
        "titanes"),
    PhotoItem(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTivsd7K3EyT2-G69UB4I_4Zh6OGqU42TWFHw&usqp=CAU",
        "apuestas"),

  ];
