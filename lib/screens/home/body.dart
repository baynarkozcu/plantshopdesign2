import 'package:flutter/material.dart';
import 'package:flutterappshop2/screens/home/widgets/featuredplants.dart';
import 'package:flutterappshop2/screens/home/widgets/headerwithsearch.dart';
import 'package:flutterappshop2/screens/home/widgets/recomendsplants.dart';
import 'package:flutterappshop2/screens/home/widgets/titlewithmore.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWidget(),
          TitleWidthMoreButton(
            title: "Recomended",
            press: () {},
          ),
          RecomendsPlants(),
          SizedBox(
            height: 25,
          ),
          TitleWidthMoreButton(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
        ],
      ),
    );
  }
}




