import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_cash/core/utils/constants.dart';

Widget profileInkWell({
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
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            const BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              '${kBaseImage}${imageForCard}',
              height: 54.0,
              width: 54.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(text),
            Spacer(),
            SvgPicture.asset(
              'assets/images/arrow-right.svg',
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
