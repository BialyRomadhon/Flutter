import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Image
            Image.asset("farmLembang.jpg"),

            // Title
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Farm House Lembang",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),

            // Informasi
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Column Pertama
                  Column(
                    children: [Icon(Icons.date_range), Text("Open Everyday")],
                  ),

                  // Column Kedua
                  Column(children: [Icon(Icons.watch), Text("09:00 - 20:00")]),

                  // Column Ketiga
                  Column(
                    children: [Icon(Icons.monetization_on), Text("Rp. 25.000")],
                  ),
                ],
              ),
            ),

            // Deskripsi
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalma bentuk spot swafoto Instagrable",
                textAlign: TextAlign.center,
              ),
            ),
            
            //scroll horizontal
            SizedBox(
              height: 150,
              child: ScrollConfiguration(behavior: ScrollConfiguration.of
              (context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}