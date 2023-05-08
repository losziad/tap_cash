import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/shared/components/components.dart';

Widget tapCashItemsAppBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Spacer(
        flex: 5,
      ),
      tabCashText(),
      Spacer(
        flex: 2,
      ),
      kIconLockSignUp,
      kTextLockSignUp,
      Spacer(
        flex: 1,
      ),
    ],
  );
}
