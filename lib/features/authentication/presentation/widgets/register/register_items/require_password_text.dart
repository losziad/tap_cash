import 'package:flutter/cupertino.dart';

Widget requiredPasswordText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'The password must consist of number only',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      Text(
        'The password must be 6 digits long',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      Text(
        'The digits must not be sequental',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      Text(
        'The digits must be unique',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
