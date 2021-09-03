import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const BOTTOM_CONTAINER_HEIGHT = 80.0;
const ICON_FONT_SIZE = 80.0;
const BOTTOM_CONTAINER_COLOR = Color(0xFFEB1555);
const ACTIVE_CARD_COLOR = Color(0xFF1D1E33);
const INACTIVE_CARD_COLOR = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleColor;
  Color femaleColor;

  void updateGender({bool hasTappedMale}){
    if(hasTappedMale){
      maleColor = ACTIVE_CARD_COLOR;
      femaleColor = INACTIVE_CARD_COLOR;
    } else {
      maleColor = INACTIVE_CARD_COLOR;
      femaleColor = ACTIVE_CARD_COLOR;
    }
  }

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
                    child: GestureDetector(
                      child: ReusableCard(
                        color: maleColor,
                        cardChild: IconContent(
                            icon: Icon(
                              FontAwesomeIcons.mars,
                              size: ICON_FONT_SIZE,
                            ),
                            label: "MALE"),
                      ),
                      onTap: () {
                        setState(() {
                          updateGender(hasTappedMale: true);
                        });
                      }
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: ReusableCard(
                        color: femaleColor,
                        cardChild: IconContent(
                          icon: Icon(
                            FontAwesomeIcons.venus,
                            size: ICON_FONT_SIZE,
                          ),
                          label: "FEMALE",
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          updateGender(hasTappedMale: false);
                        });
                      }
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(color: ACTIVE_CARD_COLOR),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: ACTIVE_CARD_COLOR),
                  ),
                  Expanded(
                    child: ReusableCard(color: ACTIVE_CARD_COLOR),
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
