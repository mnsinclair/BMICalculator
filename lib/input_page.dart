import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const BOTTOM_CONTAINER_HEIGHT = 80.0;
const ICON_FONT_SIZE = 80.0;
const BOTTOM_CONTAINER_COLOR = Color(0xFFEB1555);
const CARD_COLOR = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: CARD_COLOR,
                      cardChild: IconContent(
                          icon: Icon(
                            FontAwesomeIcons.mars,
                            size: ICON_FONT_SIZE,
                          ),
                          label: "MALE"),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: CARD_COLOR,
                      cardChild: IconContent(
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: ICON_FONT_SIZE,
                        ),
                        label: "FEMALE",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(color: CARD_COLOR),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: CARD_COLOR),
                  ),
                  Expanded(
                    child: ReusableCard(color: CARD_COLOR),
                  )
                ],
              ),
            ),
            Container(
              color: BOTTOM_CONTAINER_COLOR,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: BOTTOM_CONTAINER_HEIGHT,
            )
          ],
        ));
  }
}
