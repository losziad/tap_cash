import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';

class HomePageOneCardSmallSize extends StatelessWidget {

  String imageForCard ;
  String textTitle;
  GestureTapCallback function;
  HomePageOneCardSmallSize({Key? key, required this.imageForCard, required this.textTitle, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        function();
      },
      child: Container(
        width: 116,
        height: 90,
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
              style: kTitleStyleSmall,
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

