import 'package:flutter/material.dart';
import 'package:flutterappshop2/constants.dart';

class DeailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: kDefaultPadding * 4,
                      horizontal: kDefaultPadding),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(Icons.keyboard_arrow_left_outlined)),
                      ),
                      Spacer()
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63),
                    ),
                    image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img.png")),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 60,
                          color: primaryColor.withOpacity(0.29))
                    ]),
              )
            ],
          ),
        )
      ],
    );
  }
}
