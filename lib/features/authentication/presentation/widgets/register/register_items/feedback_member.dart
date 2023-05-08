import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';

Widget feedbackMember() {
  return Container(
    height: 245.0,
    width: double.infinity,
    decoration: BoxDecoration(
      color: kContainerSignUpColor,
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        top: 18.0,
        left: 45.0,
        right: 45.0,
      ),
      child: Column(
        children: [
          Text(
            'Why our members love Tap Cash?',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15.5,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            'Easy to set up and easy to use. My son loves the independence he feels and I love making him accountable for his own purchases!',
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 20.0,
          ),
          Image.asset(
            'assets/images/member.png',
            height: 100.0,
            width: 100.0,
          ),
        ],
      ),
    ),
  );
}
