import 'package:flutter/material.dart';
import 'package:flutterappshop2/constants.dart';
import 'package:flutterappshop2/widgets/headerwithsearch.dart';
import 'package:flutterappshop2/widgets/plantcard.dart';
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
                      child: Row(
              children: [
                FeaturedPlantCard(image: "assets/images/bottom_img_1.png", press: (){},),
                FeaturedPlantCard(image: "assets/images/bottom_img_2.png", press: (){},),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  final String image;
  final Function press;

  const FeaturedPlantCard({Key key, this.image, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(fit: BoxFit.cover,image: AssetImage(image))),
      ),
    );
  }
}
