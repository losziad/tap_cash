import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';

class HomePageOneCard extends StatelessWidget {

  String imageForCard ;
  String textTitle;
  GestureTapCallback function;
  HomePageOneCard({Key? key, required this.imageForCard, required this.textTitle, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        function();
      },
      child: Container(
        width: 170,
        height: 95,
        child: Column(
          children: [
            Image(
              image: AssetImage('${kBaseImage}${imageForCard}'),
              height: 50.0,
              width: 50.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '${textTitle}',
              style: kTitleStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
        decoration: kDecoration,

      ),
    );
  }
}

