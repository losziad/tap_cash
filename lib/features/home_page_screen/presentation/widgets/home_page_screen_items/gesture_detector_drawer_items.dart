import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';

class GestureDetectorDrawerItems extends StatelessWidget {

  String imageForCard ;
  String textTitle;
  GestureTapCallback function;
  GestureDetectorDrawerItems({Key? key, required this.imageForCard, required this.textTitle, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        function();
      },
      child: Row(
        children: [
          Image(
            image: AssetImage('${kBaseImage}${imageForCard}'),
            height: 50.0,
            width: 50.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            '${textTitle}',
            style: kTitleStyleDrawerText,
          ),
        ],
      ),
    );
  }
}

