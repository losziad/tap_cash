import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/manger/register_cubit/register_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/tap_cash_items_app_bar.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/rest_password/rest_password_items/app_bar_rest_password.dart';
import 'package:tab_cash/shared/components/components.dart';

class RestPasswordFirstScreen extends StatelessWidget {
   RestPasswordFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = RegisterCubit.get(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: appBarRestPasswordScreen(context),
      body: Column(
        children: [
          const SizedBox(
            height: 8.0,
          ),
          tapCashItemsAppBar(),
          const SizedBox(
            height: 18.0,
          ),
          myDivider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/restPassword.png',
                      height: 300.0,
                      width: 300.0,
                    ),
                    Text(
                      'Forget Password?',
                      textAlign: TextAlign.start,
                      style: kTextStyleHeader,
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    const Text(
                      'Don\'t worry, it happens to the best of us.',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Mobile number',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    defaultTextFormField(
                      text: '   Enter your mobile number',
                      validate: (value) {
                        if (value!.isEmpty) {
                          return ('please enter your mobile number');
                        }
                        return null;
                      },
                      controller: cubit.phoneController,
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    defaultButton(
                      function: ()
                      {
                      },
                      text: 'Continue',
                      color: kDefaultButtonColor,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
