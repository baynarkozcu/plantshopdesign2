import 'package:flutter/material.dart';
import 'package:flutterappshop2/widgets/underlinetitle.dart';

import '../constants.dart';

class TitleWidthMoreButton extends StatelessWidget {
  final String title;
  final Function press;

  const TitleWidthMoreButton({
    Key key, this.title, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          UnderlineTextWidget(
            text: title,
          ),
          Spacer(),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: primaryColor,
            onPressed: press,
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
