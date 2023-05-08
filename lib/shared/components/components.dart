import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tab_cash/core/utils/constants.dart';

Widget defaultButton({
  double width = 350.0,
  Color? color,
  Color? textColor,
  double radius = 50.0,
  Color? borderSideColor,
  // bool isUpperCase = true,
  // anonymous function
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 56.0,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: BorderSide(
            width: 1,
            color: kDefaultButtonColor,
          ),
        ),
        onPressed: () {
          function();
        }, //() he not put it
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: color,
      ),
    );


Widget defaultChildButton({
  double width = 350.0,
  Color? color,
  Color? textColor,
  double radius = 50.0,
  Color? borderSideColor,
  // bool isUpperCase = true,
  // anonymous function
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 56.0,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: BorderSide(
            width: 1,
            color: kChildLoginScreenColor,
          ),
        ),
        onPressed: () {
          function();
        }, //() he not put it
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: color,
      ),
    );

Widget tabCashText() => RichText(
      text: TextSpan(
        text: 'Tap',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: kDefaultButtonColor,
        ),
        children: [
          TextSpan(
            text: ' Cash',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0B83D9),
            ),
          ),
        ],
      ),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (Route<dynamic> route) => false,
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

IconButton IconButtonHomeScreen(BuildContext context) {
  return IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: Icon(
      Icons.arrow_back,
      color: Colors.black,
    ),
  );
}

Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 2.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    );

Widget defaultTextFormField({
  required TextEditingController controller,
  required FormFieldValidator<String> validate,
  required String text,
  Function? onSubmit,
  required TextInputType keyboardType,
  IconData? suffix,
  IconData? prefix,
  bool isPassword = false,
  Function? suffixPressed,
  Color textColor = Colors.black,
  Function? submit,
}) =>
    TextFormField(
      onFieldSubmitted: (value) {
        submit!(value);
      },
      validator: validate,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: text,
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(
                  suffix,
                  color: Colors.grey,
                ),
                onPressed: () {
                  suffixPressed!();
                },
              )
            : null,
        // lw passet 7aga lel suffix el suffixicon hayb2a beysawi el suffix el baseto else yeb2a mafeee4(null)

        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            gapPadding: 30,
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        filled: false,
      ),
      obscureText: isPassword,
    );


enum ToastStates
{
  SUCCESS,
  ERROR,
  WARNING,
}
Color chooseToastColor(ToastStates state)
{
  Color? color;
  switch(state)
  {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}


void showToast({
  required String text,
  required Color color,
  //required ToastStates state,
}) =>  Fluttertoast.showToast(
  msg: text,
  toastLength: Toast.LENGTH_LONG,
  gravity: ToastGravity.BOTTOM,
  timeInSecForIosWeb: 5,
 // backgroundColor: chooseToastColor(state),
  textColor: Colors.white,
  fontSize: 16.0,
);

void navigateToAndReplace(context, widget) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
        (route) {
      return false;
    },
  );
}


// void showProgressIndicator(BuildContext context) {
//   AlertDialog alertDialog = AlertDialog(
//     //شفاف
//     backgroundColor: Colors.transparent,
//     elevation: 0,
//     content: Center(
//       child: CircularProgressIndicator(
//         valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
//       ),
//     ),
//   );
//   showDialog(
//     barrierColor: Colors.white.withOpacity(0.0),
//     barrierDismissible: false,
//     context: context,
//     builder: (context) {
//       return alertDialog;
//     },
//   );
// }