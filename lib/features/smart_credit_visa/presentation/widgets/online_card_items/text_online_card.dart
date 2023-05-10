import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';

Column textOnlineCard() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'GENERATE NEW CARD',
        style: TextStyle(
          fontSize: 20,
          color: kServiceEducationColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 16,
      ),
      Text(
        'Generate a virtual online card to perform online payment transactions',
        style: TextStyle(
          fontSize: 14,
          color: kServiceEducationColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
