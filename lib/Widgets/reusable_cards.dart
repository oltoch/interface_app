import 'package:flutter/material.dart';
import 'package:interface_app/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Color iconBackgroundColor;
  final Color iconColor;
  final String text1, text2;
  final IconData iconData;

  ReusableCard(
      {this.colour = const Color(0xff292e35),
      required this.iconBackgroundColor,
      required this.iconColor,
      required this.text1,
      required this.text2,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Icon(
                iconData,
                size: 30,
                color: iconColor,
              ),
              backgroundColor: iconBackgroundColor,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  text1,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  text2,
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
              ],
            )
          ],
        ),
      ),
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class BigCardWithIcon extends StatelessWidget {
  final IconData iconData;
  final String textTitle, textDetails;

  BigCardWithIcon(
      {required this.iconData,
      required this.textTitle,
      required this.textDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0xff26292F),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(
              iconData,
              size: 40,
              color: Colors.white70,
            ),
            backgroundColor: Color(0xff2E343D),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textTitle,
                  style: kCardBigTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  textDetails,
                  style: kCardSmallTextStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TextButtonCard extends StatelessWidget {
  final Function onPress;
  final String text;
  final IconData? iconData;
  final Color backgroundColor, textColor;
  final Color? iconColor;

  TextButtonCard(
      {required this.onPress,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      this.iconData,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPress();
      },
      child: Material(
        color: backgroundColor,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11.0, horizontal: 13.0),
          child: iconData != null ? iconWithText() : textOnly(),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }

  Widget iconWithText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: iconColor,
          size: 25,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          text,
          style: TextStyle(color: textColor, fontSize: 18.0),
        ),
      ],
    );
  }

  Widget textOnly() {
    return Text(
      text,
      style: TextStyle(color: textColor, fontSize: 18.0),
    );
  }
}

class BigCardWithoutIcon extends StatelessWidget {
  final String textTitle, textDetails;

  BigCardWithoutIcon({required this.textTitle, required this.textDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff21252A), Color(0xff26292F)],
          stops: [0.1, 0.3],
        ),
        // color: Color(0xff26292F),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textTitle,
            style: kCardSmallTextStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            textDetails,
            style: kCardBigTextStyle.copyWith(
                fontWeight: FontWeight.w300, fontSize: 23),
          ),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  final Function onPress;
  final String title;

  BottomButton({required this.onPress, required this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            color: Colors.lightBlue),
        height: 70.0,
        width: double.infinity,
        //margin: EdgeInsets.only(top: 10.0),
        //padding: EdgeInsets.only(bottom: 10),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
