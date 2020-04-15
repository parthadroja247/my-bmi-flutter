import 'package:flutter/material.dart';
import 'resuable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                )),
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              color: Color(0xFF1D1E33),
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                )),
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                )),
              ],
            )),
          ],
        ));
  }
}
