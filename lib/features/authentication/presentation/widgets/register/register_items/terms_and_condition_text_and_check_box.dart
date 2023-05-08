
import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';

class TermsAndConditionsTextAndCheckBox extends StatefulWidget {
  const TermsAndConditionsTextAndCheckBox({
    Key? key,
    required this.check,
  }) : super(key: key);

  final bool check;

  @override
  State<TermsAndConditionsTextAndCheckBox> createState() => _TermsAndConditionsTextAndCheckBoxState();
}

class _TermsAndConditionsTextAndCheckBoxState extends State<TermsAndConditionsTextAndCheckBox> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        Checkbox(value: widget.check, onChanged: (value){
          setState(() {
            check = value!;
          });
        },),
        RichText(
          text: const TextSpan(
            text: 'I have seen and understand the',
            style: TextStyle(
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: ' fees \n',
                style: TextStyle(
                  color: kDescriptionTapCashPrivacyColor,
                ),
              ),
              TextSpan(
                text: 'associated with the account and agree to \nthe Tap Cash',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: ' cardholder',
                style: TextStyle(
                  color: kDescriptionTapCashPrivacyColor,
                ),
              ),
              TextSpan(
                text: ' and website \n',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'terms and conditions',
                style: TextStyle(
                  color: kDescriptionTapCashPrivacyColor,
                ),
              ),
              TextSpan(
                text: ' and',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: ' privacy policy',
                style: TextStyle(
                  color: kDescriptionTapCashPrivacyColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}