import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/shared/components/components.dart';

AppBar appBarSignUpScreen(BuildContext context) {
  return AppBar(
    centerTitle: true,
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: IconButtonHomeScreen(context),
    title: Text(
      'Sign up',
      style: kAppBarSignUp,
    ),
  );
}