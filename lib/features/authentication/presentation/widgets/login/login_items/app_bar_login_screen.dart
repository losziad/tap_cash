import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/shared/components/components.dart';

AppBar appBarLoginScreen(BuildContext context) {
  return AppBar(
    centerTitle: true,
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: IconButtonHomeScreen(context),
    title: const Text(
      'Login',
      style: kAppBarSignUp,
    ),
  );
}