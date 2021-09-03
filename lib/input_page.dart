import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  // void updateGenderColor({Gender selectedGender}) {
  //   maleColor = selectedGender == Gender.male ? ACTIVE_CARD_COLOR : INACTIVE_CARD_COLOR;
  //   femaleColor = selectedGender == Gender.female ? ACTIVE_CARD_COLOR : INACTIVE_CARD_COLOR;
  // }

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
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? ACTIVE_CARD_COLOR
                          : INACTIVE_CARD_COLOR,
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
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                      ? ACTIVE_CARD_COLOR
                          : INACTIVE_CARD_COLOR,
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
