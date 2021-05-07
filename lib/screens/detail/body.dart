import 'package:flutter/material.dart';
import 'package:flutterappshop2/constants.dart';
import 'package:flutterappshop2/screens/detail/widgets/iconcard.dart';
import 'package:flutterappshop2/screens/detail/widgets/titleandprice.dart';

import 'widgets/imageandicons.dart';

class DeailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageandIcons(),
          TitleandPrice(
            title: "Angelica",
            country: "Russia",
            price: 450,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 85,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(25))),
                  color: primaryColor,
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  height: 85,
                  onPressed: () {},
                  child: Text("Description"),
                ),
              )
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}
