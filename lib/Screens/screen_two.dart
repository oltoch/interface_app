import 'package:flutter/material.dart';
import 'package:interface_app/Widgets/reusable_cards.dart';
import 'package:interface_app/Widgets/round_icon_button.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff030909), Color(0xff181A1E)],
                  stops: [0.1, 0.3],
                ),
              ),
              padding: EdgeInsets.only(left: 25.0, top: 20.0, right: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RoundIconButton(
                        onPress: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        'Add Goals',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BigCardWithoutIcon(
                      textTitle: 'Goal Title', textDetails: 'Help The Needy'),
                  SizedBox(
                    height: 20,
                  ),
                  BigCardWithoutIcon(
                      textTitle: 'Goal Description',
                      textDetails:
                          'Once saved enough, try helping those in need'),
                  SizedBox(
                    height: 20,
                  ),
                  BigCardWithoutIcon(
                      textTitle: 'Reminder', textDetails: '5th of Every Month'),
                  SizedBox(
                    height: 20,
                  ),
                  BigCardWithoutIcon(
                      textTitle: 'Expected Maturity Date',
                      textDetails: '02 Years'),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Goals Preview',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BigCardWithIcon(
                      iconData: Icons.sick_outlined,
                      textTitle: 'Help The Needy',
                      textDetails:
                          "Once saved enough, try helping those in need"),
                  SizedBox(
                    height: 30,
                  ),
                  BottomButton(
                      onPress: () {
                        Navigator.pop(context);
                      },
                      title: 'Add Goals'),
                  SizedBox(
                    height: 30,
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
