import 'package:flutter/material.dart';
import 'package:flutterappshop2/screens/detail/detailscreen.dart';

import 'plantcard.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlantCard(
            title: "Samantha",
            image: "assets/images/image_1.png",
            country: "Russia",
            price: 440,
            press: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailScreen(),
              ));
            },
          ),
          PlantCard(
            title: "Papatya",
            image: "assets/images/image_2.png",
            country: "America",
            price: 350,
            press: () {
                            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailScreen(),
              ));
            },
          ),
          PlantCard(
            title: "Menekşe",
            image: "assets/images/image_3.png",
            country: "Turkey",
            price: 750,
            press: () {
                            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailScreen(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
