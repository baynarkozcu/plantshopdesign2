import 'package:flutter/material.dart';
import '../constants.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
      height: 80,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, -25),
            blurRadius: 35,
            color: primaryColor.withOpacity(0.38))
      ], color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            size: 35,
            color: primaryColor,
          ),
          Icon(
            Icons.home,
            size: 35,
          ),
          Icon(
            Icons.home,
            size: 35,
          ),
        ],
      ),
    );
  }
}