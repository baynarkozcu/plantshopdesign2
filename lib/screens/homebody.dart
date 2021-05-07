import 'package:flutter/material.dart';
import 'package:flutterappshop2/widgets/featuredplants.dart';
import 'package:flutterappshop2/widgets/headerwithsearch.dart';
import 'package:flutterappshop2/widgets/recomendsplants.dart';
import 'package:flutterappshop2/widgets/titlewithmore.dart';

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




