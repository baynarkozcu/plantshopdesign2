import 'package:flutter/material.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  final IconData icon;

  const IconCard({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 22,
                color: primaryColor.withOpacity(0.22)),
            BoxShadow(
                offset: Offset(-15, -15), blurRadius: 20, color: Colors.white)
          ]),
      child: Icon(
        icon,
        color: primaryColor,
        size: 35,
      ),
    );
  }
}
