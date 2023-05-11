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
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18.0,
                      ),
                      child: Row(
                        children: const [
                          Text(
                            'Verify your identity',
                            textAlign: TextAlign.start,
                            style: kTextStyleHeader,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.0,
                      ),
                      child: Text(
                        'This is not a credit check.',
                        style: TextStyle(
                          fontSize: 14.0
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Your National ID number',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          defaultTextFormField(
                            text: '   National ID number',
                            validate: (value) {},
                            controller: nationalIDController,
                            keyboardType: TextInputType.name,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Your National ID photo',
                              ),
                            ],
                          ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              children: [
                                const Icon(
                                Icons.cloud_upload,
                                 color: Colors.blue,
                                size: 40.0,
                                   ),
                                const SizedBox(
                                  width: 6.0,
                                ),
                                TextButton(
                                  onPressed: (){},
                                  child: const Text(
                                    'Upload National ID Photo',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          const SizedBox(
                            height: 36.0,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Terms and conditions',
                                textAlign: TextAlign.start,
                                style: kTextStyleHeader,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: [
                              Checkbox(value: check, onChanged: (value){},),
                              const Text(
                                'Get the Tap Cash newsletters, offers and '
                                    'updates',
                              ),
                            ],
                          ),
                          TermsAndConditionsTextAndCheckBox(check: check),

                          const SizedBox(
                            height: 50.0,
                          ),
                          defaultButton(
                            text: 'Continue',
                            textColor: Colors.white,
                            function: ()
                            {
                             navigateTo(context, const RegisterFifthScreen());
                            },
                            color: kDefaultButtonColor,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          feedbackMember(),
                          const SizedBox(
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

