import 'package:flutter/material.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_fifth_screen.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/app_bar_sign_up_screen.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/description_tap_cash.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/feedback_member.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/tap_cash_items_app_bar.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/terms_and_condition_text_and_check_box.dart';
import 'package:tab_cash/shared/components/components.dart';

class RegisterFourthScreen extends StatelessWidget {
  const RegisterFourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nationalIDController = TextEditingController();

    bool check = false;

    return Scaffold(
        resizeToAvoidBottomInset: false,
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
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18.0,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Verify your identity',
                            textAlign: TextAlign.start,
                            style: kTextStyleHeader,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18.0,
                      ),
                      child: Text(
                        'This is not a credit check.',
                        style: TextStyle(
                          fontSize: 14.0
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Your National ID number',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          defaultTextFormField(
                            text: '   National ID number',
                            validate: (value) {},
                            controller: nationalIDController,
                            keyboardType: TextInputType.name,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Text(
                                'Your National ID photo',
                              ),
                            ],
                          ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                Icons.cloud_upload,
                                 color: Colors.blue,
                                size: 40.0,
                                   ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    'Upload National ID Photo',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          SizedBox(
                            height: 36.0,
                          ),
                          Row(
                            children: [
                              Text(
                                'Terms and conditions',
                                textAlign: TextAlign.start,
                                style: kTextStyleHeader,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: [
                              Checkbox(value: check, onChanged: (value){},),
                              Text(
                                'Get the Tap Cash newsletters, offers and '
                                    'updates',
                              ),
                            ],
                          ),
                          TermsAndConditionsTextAndCheckBox(check: check),
                          SizedBox(
                            height: 50.0,
                          ),
                          defaultButton(
                            text: 'Continue',
                            textColor: Colors.white,
                            function: ()
                            {
                             navigateTo(context, RegisterFifthScreen());
                            },
                            color: kDefaultButtonColor,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          feedbackMember(),
                          SizedBox(
                            height: 25.0,
                          ),
                          descriptionTapCash(),
                        ],
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

