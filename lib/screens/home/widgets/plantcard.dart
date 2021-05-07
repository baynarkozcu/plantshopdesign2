import 'package:flutter/material.dart';

import '../../../constants.dart';


class PlantCard extends StatelessWidget {
  final String title, country, image;
  final int price;
  final Function press;

  const PlantCard(
      {Key key, this.title, this.country, this.image, this.price, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
          child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 0.25),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: primaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(color: primaryColor.withOpacity(0.5)))
                  ])),
                  Text("\$" + price.toString(),
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: primaryColor,
                          ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}