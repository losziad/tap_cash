import 'package:flutter/material.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/login/switch_login_screen.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/app_bar_sign_up_screen.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/tap_cash_items_app_bar.dart';
import 'package:tab_cash/shared/components/components.dart';

class RegisterFifthScreen extends StatelessWidget {
  const RegisterFifthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarSignUpScreen(context),
      body: Column(
        children: [
          SizedBox(
            height: 8.0,
          ),
          tapCashItemsAppBar(),
          SizedBox(
            height: 8.0,
          ),
          LinearStepIndicator(
            steps: 3,
            controller: PageController(),
            labels: List<String>.generate(3, (index) => "Step ${index + 1}"),
            complete: () {
              //typically, you'd want to put logic that returns true when all the steps
              //are completed here
              return Future.value(true);
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          myDivider(),
          SizedBox(
            height: 15.0,
          ),
          Image.asset('assets/images/lastScreen.png',
            height: 300.0,
            width: 400.0,
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            'Congratulations!!',
            style: kTextStyleHeader,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '  Your registration has been \ncompleted successfully. You \n        can now access your \n                  account.',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          defaultButton(
            text: 'Login Now',
            function: ()
            {
              navigateTo(context, SwitchLoginScreen(),);
            },
            color: kDefaultButtonColor,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
