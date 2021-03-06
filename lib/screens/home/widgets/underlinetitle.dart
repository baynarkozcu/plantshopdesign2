import 'package:flutter/material.dart';

import '../../../constants.dart';


class UnderlineTextWidget extends StatelessWidget {
  final String text;
  const UnderlineTextWidget({
    Key key, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: primaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
