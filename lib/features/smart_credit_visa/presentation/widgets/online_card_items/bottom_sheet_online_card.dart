import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/manger/online_card_cubit/online_card_cubit.dart';
import 'package:tab_cash/shared/components/components.dart';

Column bottomSheetOnlineCard(TextEditingController passwordController, OnlineCardCubit cubit) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 25.0,
      ),
      Text(
        'Please Enter Your Password',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 25.0,
      ),
      Text(
        'Enter Your Password Below To Proceed Within Your Transaction',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15.0,
        ),
      ),
      SizedBox(
        height: 25.0,
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Password',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            defaultTextFormField(
              controller: passwordController,
              validate: (value) {
                if (value!.isEmpty)
                  return "Required Field..!";
              },
              text: "   Enter your password",
              keyboardType: TextInputType.visiblePassword,
              isPassword: cubit.isPassword,
              suffix: cubit.suffix,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      defaultButton(
        radius: 10,
        color: kDefaultButtonColor,
        function: () {
        },
        text: 'Confirm',
        textColor: Colors.white,
      ),
    ],
  );
}
