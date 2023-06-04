import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_cash/features/authentication/data/models/user_getter_model.dart';
import 'package:tab_cash/features/smart_credit_visa/data/models/credit_card_model.dart';

const kAppBarSignUp = TextStyle(
  color: Colors.black,
);

const kIconLockSignUp = Icon(
  Icons.lock_outline_sharp,
  color: Colors.black,
  size: 15.0,
);

const kTextLockSignUp = Text(
  'SSL',
  style: TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
  ),
);

const kTextStyleHeader = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 25.0,
);

const kHomePageScreenBackGroundColor = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xff263699),
      Color(0xff5D68B0),
      Color(0xff848CC0),
      Color(0xff9FA5CB),
      Color(0xffB6BBD5),
      Color(0xffD0D2DD),
      Color(0xffEBEBEB),
      Color(0xffEBEBEB),
    ],
    tileMode: TileMode.mirror,
  ),
);

//FOR CUBIT
String? userId;
String? userCardNumber;
String? token;
UserGetterModel? user;

//COLORS
const kDefaultButtonColor = Color(0xFF263699);

const kContainerSignUpColor = Color(0xFFE1E2E6);

const kDescriptionTapCashColor = Color(0xFF666E80);

const kDescriptionTapCashPrivacyColor = Color(0xFF0B83D9);

const kChildLoginScreenColor = Color(0xFFF26C0C);

const kServiceDefaultColor = Color(0xFF98A1B3);

const kServiceEducationColor = Color(0xFF666E80);

const kTitleStyle = TextStyle(
  fontSize: 18.0,
);

const kTitleStyleSmall = TextStyle(
  fontSize: 12.0,
);

const kTitleStyleDrawerTextHeader =
    TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0);

const kTitleStyleDrawerText = TextStyle(fontSize: 16.0);

const kFontSizeDrawer = TextStyle(
  fontSize: 16.0,
);

final kDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(
    10.0,
  ),
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.grey,
      offset: Offset(0.0, 1.0),
      blurRadius: 10.0,
    ),
  ],
);

final kDecorationOnlineCard = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xff9327F0),
      Color(0xff9327F0),
      Color(0xff9327F0),
      Color(0xff9327F0),
      Color(0xff320DAF),
    ],
    tileMode: TileMode.mirror,
  ),
  color: Colors.white,
  borderRadius: BorderRadius.circular(15.0),
  boxShadow: [
    BoxShadow(
      color: Colors.grey,
      offset: Offset(0.0, 1.0),
      blurRadius: 10.0,
    ),
  ],
);

final kDecorationServices = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
    BoxShadow(
      color: Colors.grey,
      blurStyle: BlurStyle.outer,
      blurRadius: 4,
    ),
  ],
);

const String kBaseImage = 'assets/images/';

const kTextDialog = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
);

const kTextOrder = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kTextDialogBody = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w600,
);

const kTextDialogRightBody = TextStyle(
  fontSize: 15.0,
  color: Colors.grey,
);

const kStyleAppBar = TextStyle(
  color: Colors.black,
  fontSize: 22.0,
  fontWeight: FontWeight.w400,
);

//This String to Cache Helper
String? uId = '';
