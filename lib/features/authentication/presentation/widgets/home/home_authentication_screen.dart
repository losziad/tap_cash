import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/login/switch_login_screen.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_first_screen.dart';
import 'package:tab_cash/shared/components/components.dart';

class HomeAuthenticationScreen extends StatelessWidget {
  const HomeAuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
    body: SafeArea(
      child: Column(
        children: [
          Stack(
           alignment: AlignmentDirectional.bottomEnd,
            children: [
              Image.asset(
                'assets/images/login.jpg',
              ),
              Container(
                width: double.infinity,
                height: size.height * .146,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    tabCashText(),
                    const Text(
                      'Smart Wallet',
                      style: TextStyle(
                        letterSpacing: 4.3,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color:kChildLoginScreenColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 20.0,
              left: 20.0,
            ),
            child: Text(
                'Take control of your expenses and empower your children',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
          ),
          const SizedBox(
            height: 20,
          ),
          defaultButton(
            function: ()
            {
              navigateTo(context, const SwitchLoginScreen());
            },
            text: 'Login',
            textColor: Colors.white,
            color: kDefaultButtonColor,
          ),
          const SizedBox(
            height: 20,
          ),
          defaultButton(
            function: ()
            {
              navigateTo(context, const RegisterFirstScreen());
            },
            text: 'Sign up',
            textColor: kDefaultButtonColor,
            color: Colors.white,
          ),

        ],
      ),
    ),
    );
  }
}
