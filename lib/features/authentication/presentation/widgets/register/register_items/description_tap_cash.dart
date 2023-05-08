import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';

Widget descriptionTapCash() {
  return Column(
    children: [
      Text(
        '© Tab Cash is a financial application operating in Egypt under the supervision of the Central '
            'Bank of Egypt. The Tab Cash card is issued pursuant to a license by Mastercard International.',
        style: TextStyle(
          color: kDescriptionTapCashColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      Text(
        'By signing up for the Tab Cash card, you consent to the secure sharing of your card transaction data'
            'with Tap Cash for its independent use, subject to the Tap Cash',
        style: TextStyle(
          color: kDescriptionTapCashColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      Row(
        children: [
          Text(
            'Privacy Policy.',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: kDescriptionTapCashPrivacyColor,
            ),
          ),
        ],
      ),
    ],
  );
}
