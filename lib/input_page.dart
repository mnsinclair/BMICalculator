import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const cardColor = Color(0xFF1D1E33);

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
                      color: cardColor,
                      cardChild: GenderPicker(isMale: true),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: cardColor,
                      cardChild: GenderPicker(isMale: false),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(color: cardColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: cardColor),
                  ),
                  Expanded(
                    child: ReusableCard(color: cardColor),
                  )
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

class GenderPicker extends StatelessWidget {
  // const GenderPicker({
  //   Key key,
  // }) : super(key: key);

  GenderPicker({@required this.isMale});

  final bool isMale;

  @override
  Widget build(BuildContext context) {
    Icon genderIcon;
    String genderString;
    if (isMale) {
      genderIcon = Icon(
        FontAwesomeIcons.mars,
        size: 80.0,
      );
      genderString = "MALE";
    } else {
      genderIcon = Icon(
        FontAwesomeIcons.venus,
        size: 80.0,
      );
      genderString = "FEMALE";
    }

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      genderIcon,
      SizedBox(
        height: 15.0,
      ),
      Text(genderString, style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)))
    ]);
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
