//To Add More Child use list view

import 'package:flutter/material.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/app_bar_sign_up_screen.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/description_tap_cash.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/feedback_member.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/require_password_text.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/tap_cash_items_app_bar.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_fourth_screen.dart';
import 'package:tab_cash/shared/components/components.dart';

class RegisterThirdScreen extends StatelessWidget {
  const RegisterThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var firstNameController = TextEditingController();
    var lastNameController = TextEditingController();
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();

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
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      const Text(
                        'Enter child details',
                        textAlign: TextAlign.start,
                        style: kTextStyleHeader,
                      ),
                      const SizedBox(
                        width: 91.0,
                      ),
                      TextButton(
                        child: const Text('SKIP'),
                        onPressed: () {
                          navigateTo(context, const RegisterFourthScreen());
                        },
                      ),
                    ],
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
                            'Child\'s first name',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      defaultTextFormField(
                        text: '   Enter Child\'s first name',
                        validate: (value) {},
                        controller: firstNameController,
                        keyboardType: TextInputType.name,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Child\'s last name',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      defaultTextFormField(
                        text: '   Enter Child\'s last name',
                        validate: (value) {},
                        controller: lastNameController,
                        keyboardType: TextInputType.name,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Child\'s date of birth',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      defaultTextFormField(
                        text: '   Enter your mobile number',
                        validate: (value) {},
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Child\'s Password',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      defaultTextFormField(
                        text: '   Enter Child\'s password',
                        validate: (value) {},
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        prefix: Icons.visibility_outlined,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          requiredPasswordText(),
                        ],
                      ),
                      const SizedBox(
                        height: 55.0,
                      ),
                      defaultButton(
                        text: 'Continue',
                        textColor: Colors.white,
                        function: ()
                        {
                         navigateTo(context, const RegisterFourthScreen());
                        },
                        color: kDefaultButtonColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultButton(
                        function: ()
                        {
                         // navigateTo(context, RegisterFirstScreen());
                        },
                        text: 'Add another child',
                        textColor: kDefaultButtonColor,
                        color: Colors.white,
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
