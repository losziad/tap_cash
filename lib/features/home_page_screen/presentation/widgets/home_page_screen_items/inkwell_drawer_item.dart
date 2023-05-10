import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/home/home_authentication_screen.dart';
import 'package:tab_cash/shared/components/components.dart';

Widget InkWellDarwerItem({
  required String text,
  required Function function,
}) =>
    InkWell(
      onTap: () {
        function();
      },
      child: Text(
        text,
        style: kFontSizeDrawer,
      ),
    );
