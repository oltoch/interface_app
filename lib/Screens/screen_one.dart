import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interface_app/Screens/screen_two.dart';
import 'package:interface_app/Widgets/reusable_cards.dart';
import 'package:interface_app/Widgets/round_icon_button.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 25.0, top: 20.0, right: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RoundIconButton(
                        onPress: () {},
                        child: Icon(
                          Icons.menu_rounded,
                          color: Colors.white70,
                          size: 30,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      RoundIconButton(
                        onPress: () {
                          print("Button got pressed");
                        },
                        child: Icon(
                          Icons.search_outlined,
                          color: Colors.white70,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      RoundIconButton(
                        onPress: () {},
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("images/myImage.jpg"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text(
                      "Hello Tolulope 👋🏽",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Text(
                    "Create your life",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'goal for long ',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'term',
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '34 Goals',
                            style: (TextStyle(
                              fontSize: 24,
                            )),
                          ),
                          Text(
                            'Ambitious person, aren\'t you?',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 15),
                          )
                        ],
                      ),
                      TextButtonCard(
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScreenTwo()));
                        },
                        text: 'Add Goals',
                        textColor: Colors.white,
                        backgroundColor: Colors.lightBlue,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ReusableCard(
                          iconData: Icons.star_border_purple500_outlined,
                          iconColor: Color(0xffecc571),
                          iconBackgroundColor: Color(0xff464135),
                          text1: "12 ",
                          text2: "New",
                        ),
                      ),
                      Expanded(
                          child: ReusableCard(
                        iconData: Icons.airplanemode_active,
                        iconBackgroundColor: Color(0xff2F4336),
                        iconColor: Color(0xff75CB6B),
                        text1: "05 ",
                        text2: "Done",
                      )),
                      Expanded(
                          child: ReusableCard(
                        iconData: Icons.arrow_drop_down_circle_outlined,
                        iconBackgroundColor: Color(0xff2A394D),
                        iconColor: Color(0xff5490E8),
                        text1: "13 ",
                        text2: "Complete",
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Ongoing Goals",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BigCardWithIcon(
                      iconData: Icons.account_balance_wallet_outlined,
                      textTitle: 'Save \$50,000',
                      textDetails:
                          'By saving at least \$100 minimum, a month before retirement'),
                  SizedBox(
                    height: 15,
                  ),
                  BigCardWithIcon(
                      iconData: Icons.wb_cloudy_outlined,
                      textTitle: 'Dream House',
                      textDetails:
                          'Building a house in the middle of a mountain, middle of nowhere'),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              decoration: BoxDecoration(
                color: Color(0xff26292F),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 6,
                    child: TextButtonCard(
                      onPress: () {
                        print('Bottom sheet button got pressed');
                      },
                      text: 'Home',
                      backgroundColor: Color(0xff2A394D),
                      textColor: Color(0xff4892FF),
                      iconData: Icons.house_outlined,
                      iconColor: Color(0xff4892ff),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Icon(
                      Icons.calendar_today_outlined,
                      color: Color(0xff4892ff),
                      size: 20,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Icon(
                      Icons.event_note_outlined,
                      color: Color(0xff4892ff),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
