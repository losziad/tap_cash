import 'package:flutter/material.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/otp_items/build_phone_verification_bloc.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/otp_items/build_pin_code_fields.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/app_bar_sign_up_screen.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/tap_cash_items_app_bar.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_third_screen.dart';
import 'package:tab_cash/shared/components/components.dart';

class RegisterSecondScreenOTP extends StatelessWidget {
   RegisterSecondScreenOTP({Key? key}) : super(key: key);

  late String otpCode = '';



   @override
  Widget build(BuildContext context) {
   // BlocProvider.of<OTPCubit>(context).submitOTP(otpCode);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: appBarSignUpScreen(context),
      body: Column(
        children: [
          const SizedBox(
            height: 8.0,
          ),
          tapCashItemsAppBar(),
          const SizedBox(
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
          const SizedBox(
            height: 8.0,
          ),
          myDivider(),
          const SizedBox(
            height: 15.0,
          ),

          Expanded
            (
              child:SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 22.0,
                        ),
                        child: Text(
                          'Check your mobile phone',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        child: Text(
                          'We just sent an OTP to your registered \n                        phone number',
                          style: TextStyle(
                              fontSize: 14.0
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                        child: Column(
                          children: [
                            buildPinCodeFields(context),
                            const SizedBox(
                              height: 20.0,
                            ),
                            buildPhoneVerificationBloc(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Center(
                        child: RichText(
                            text: const TextSpan(
                              text: 'Didn\'t get a code?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                              children: [
                                TextSpan(
                                  text: ' Resend',
                                  style: TextStyle(
                                    color: kDescriptionTapCashPrivacyColor,
                                    fontSize: 18.0,
                                  )
                                ),
                              ]
                            ),
                        ),
                      ),
                      const SizedBox(
                        height: 100.0,
                      ),
                      Center(
                        child: defaultButton(
                          text: 'Verify OTP',
                          textColor: Colors.white,
                          function: ()
                          {

                            navigateToAndReplace(context, const RegisterThirdScreen());
                          },
                          color: kDefaultButtonColor,
                        ),
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
