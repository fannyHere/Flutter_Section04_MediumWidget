import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:section_4/18%20Model/mods_product.dart';
import 'package:section_4/appbar_widget.dart';

// ignore: must_be_immutable
class MyModels extends StatelessWidget {
  // const MyModels({super.key});
  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
      //index digunakan sebagai parameter yang memberikan nilai dari 0 hingga 99. Ini menunjukkan bahwa kita akan membuat 100 produk palsu, dan setiap produk akan memiliki indeks unik dari 0 hingga 99.
      //return Product(imageURL, judul, harga, deskripsi)
      //"http://picsum.photos/id/870/200"
      return Product(
          "http://picsum.photos/id/$index/200",
          faker.food.restaurant(),
          1000 + Random().nextInt(100000),
          faker.lorem.sentence());
    });

    return Scaffold(
      appBar: appbar(),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //satulayar dibagi jadi 2
          crossAxisSpacing: 5, //ngasih spasi secara vertikal
          mainAxisSpacing: 5, //ngasih spasi secara horizontal
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(dummyData[index].imageURL),
            footer: Container(
              height: 80,
              color: Colors.purple.withOpacity(0.5),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    dummyData[index].judul,
                    maxLines: 1,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text("Rp ${dummyData[index].harga}", maxLines: 1),
                  Text(
                    dummyData[index].deskripsi,
                    maxLines: 2,
                    style: TextStyle(color: Colors.amber),
                  ),
                ],
              ),
            ),
          );
        },
        // itemCount: 20,
        itemCount: dummyData.length,
      ),
    );
  }
}
