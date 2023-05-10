import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_cash/core/utils/constants.dart';

Widget ServiceInkWellItem({
  required Function function,
  required String text,
  required String imageForCard,
}) =>
    InkWell(
      onTap: () {
        function();
      },
      child: Container(
        padding: EdgeInsets.all(13),
        decoration: kDecorationServices,
        child: Row(
          children: [
            Text(text),
            Spacer(),
            SvgPicture.asset(
              '${kBaseImage}${imageForCard}',
              color: kServiceDefaultColor,
            ),
          ],
        ),
      ),
    );
