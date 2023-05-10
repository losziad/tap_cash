import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';

Widget headerServicePage({
  required String headerText,
}) =>
    Text(
      headerText,
      style: TextStyle(
        fontSize: 16,
        color: kServiceEducationColor,
        fontWeight: FontWeight.w500,
      ),
    );

Widget serviceCurrencyText({
  required String text,
}) =>
    Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: kServiceEducationColor,
        fontWeight: FontWeight.w500,
      ),
    );
