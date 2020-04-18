import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.iconData, this.title});

  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            iconData,
            size: 80,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: kLabelFontStyle,
          )
        ],
      ),
    );
  }
}
