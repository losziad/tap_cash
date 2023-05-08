import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

Widget buildPinCodeFields(BuildContext context) {
  late String otpCode;

  return Container(
    child: PinCodeTextField(
      autoFocus: true,
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      appContext: context,
      length: 6,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        borderWidth: 1,
        activeColor: Colors.grey,
        inactiveColor: Colors.blue,
        inactiveFillColor: Colors.white,
        selectedColor: Colors.blue,
        selectedFillColor: Colors.white,
        activeFillColor: Colors.lightBlue,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      onCompleted: (submittedCode) {
        otpCode = submittedCode;
        print("Completed");
      },
      onChanged: (value) {
        print(value);
      },
    ),
  );
}
