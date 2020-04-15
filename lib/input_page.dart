import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resuable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender seletedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      seletedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    color: seletedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      title: 'MALE',
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      seletedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    color: seletedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      title: 'FEMALE',
                    ),
                  ),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              color: activeCardColor,
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                )),
              ],
            )),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}
