import 'package:flutter/material.dart';
//import dari condition juga bisa

//ini sebuah objek/model bukan widget karena tidak menextends stateful atau stateless widget

class Product {
  @required
  String judul;
  @required
  String imageURL;
  @required
  int harga;
  @required
  String deskripsi;

//@required itu wajib diisi

//buat konstraktor
  Product(this.imageURL, this.judul, this.harga, this.deskripsi);
}
