import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/manger/otp_cubit/otp_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/manger/register_cubit/register_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/manger/register_cubit/register_states.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/otp_items/build_phone_verification_bloc.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/otp_items/show_progress_indicator.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/app_bar_sign_up_screen.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/body_sign_up_first_screen.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/description_tap_cash.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/require_password_text.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_items/tap_cash_items_app_bar.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_second_screen_otp.dart';
import 'package:tab_cash/features/home_page_screen/home_page_screen.dart';
import 'package:tab_cash/shared/components/components.dart';

class RegisterFirstScreen extends StatelessWidget {
  const RegisterFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = RegisterCubit.get(context);

    late String otpCode;

    // void verfiyOTP(BuildContext context) {
    //   BlocProvider.of<OTPCubit>(context).submitOTP(otpCode);
    // }

    Widget _buildPhoneNumberSubmittedBloc() {
      return BlocListener<OTPCubit, OTPState>(
        listenWhen: (previous, current) {
          return previous != current;
        },
        listener: (context, state) {
          if (state is Loading) {
            showProgressIndicator(context);
          }
          if(state is PhoneNumberSubmitted)
          {
            Navigator.pop(context);
           // Navigator.of(context).pushNamed(otpScreen, arguments: phoneNumber);
            navigateTo(context, HomePageScreen());
          }
          if(state is ErrorOccurred)
          {
            Navigator.pop(context);
            String errorMsg = (state).errorMsg;
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMsg),
              backgroundColor: Colors.black,
              duration: Duration(seconds: 3),
            ),);
          }
        },
        child: Container(),
      );
    }

    return BlocConsumer<RegisterCubit, RegisterStates>(
      listener: (context, state) {
        if (state is SuccessRegisterState && state.userModel.status == true) {
          userId = state.userModel.userid;
          showToast(text: "success", color: Colors.green);
          navigateToAndReplace(context, RegisterSecondScreenOTP());
        } else if (state is SuccessRegisterState &&
            state.userModel.status == false) {
          showToast(text: "account already exist", color: Colors.red);
        }
        if (state is ErrorRegisterState) {
          showToast(text: "try again", color: Colors.red);
        }
      },
      builder: (context, state) {
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
                labels:
                    List<String>.generate(3, (index) => "Step ${index + 1}"),
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
              // bodySignUpFirstScreen(context),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Form(
                    key: cubit.formKey,
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
                                  'Let\'s get to know you',
                                  textAlign: TextAlign.start,
                                  style: kTextStyleHeader,
                                ),
                              ],
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
                                      'Your legal first name',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                defaultTextFormField(
                                  text: '   Enter your legal first name',
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return ('please enter your first name');
                                    }
                                    return null;
                                  },
                                  controller: cubit.firstNameController,
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Your legal last name',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                defaultTextFormField(
                                  text: '   Enter your legal last name',
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return ('please enter your last name');
                                    }
                                    return null;
                                  },
                                  controller: cubit.lastNameController,
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Email Address',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                defaultTextFormField(
                                  text: '   Enter your email address',
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return ('please enter your email address');
                                    }
                                    return null;
                                  },
                                  controller: cubit.emailController,
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Mobile number',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                defaultTextFormField(
                                  text: '   Enter your mobile number',
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return ('please enter your phone number');
                                    }
                                    return null;
                                  },
                                  controller: cubit.phoneController,
                                  keyboardType: TextInputType.number,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Your user name',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                defaultTextFormField(
                                  text: '   Enter your username name',
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return ('please enter your ');
                                    }
                                    return null;
                                  },
                                  controller: cubit.userNameController,
                                  keyboardType: TextInputType.name,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Password',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                defaultTextFormField(
                                  text: '   Enter your password',
                                  validate: (value) {
                                    if (value!.isEmpty) {
                                      return ('password too short');
                                    }
                                    return null;
                                  },
                                  controller: cubit.passwordController,
                                  keyboardType: TextInputType.visiblePassword,
                                  prefix: Icons.visibility_outlined,
                                  suffix: cubit.suffix,
                                  isPassword: cubit.isPassword,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    requiredPasswordText(),
                                  ],
                                ),
                                SizedBox(
                                  height: 55.0,
                                ),
                                state is! LoadingRegisterState
                                    ? defaultButton(
                                    function: ()
                                    {

                                      if (cubit.formKey.currentState!.validate() == true) {
                                            cubit.register(
                                                firstName: cubit.firstNameController.text,
                                                lastName: cubit.lastNameController.text,
                                                email: cubit.emailController.text,
                                                phone: cubit.phoneController.text,
                                                userName: cubit.userNameController.text,
                                                password: cubit.passwordController.text,

                                            );
                                            OTPCubit().submitPhoneNumber(cubit.phoneController.text);
                                            //buildPhoneVerificationBloc();
                                            _buildPhoneNumberSubmittedBloc();
                                          }
                                          const Center(child: CircularProgressIndicator());
                                        },
                                        text: 'Continue',
                                        color: kDefaultButtonColor,
                                        textColor: Colors.white,
                                )
                                    : const Center(
                                        child: CircularProgressIndicator()),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  height: 60.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: kContainerSignUpColor,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      '88% of parents said their children are more money confident since using Tap Cash',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.5,
                                      ),
                                    ),
                                  ),
                                ),
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
              ),
            ],
          ),
        );
      },
    );

  }
}
// StepIndicatorPageView(
//   steps: 3,
//   indicatorPosition: IndicatorPosition.top,
//   labels: List<String>.generate(3, (index) => "Step ${index + 1}"),
//   controller: PageController(),
//   complete: () {
//     //typically, you'd want to put logic that returns true when all the steps
//     //are completed here
//     return Future.value(true);
//   },
//   children: List<Widget>.generate(
//     3,
//         (index) => Container(
//       color: Color(0xffffffff),
//       child: Center(
//         child: Text(
//           "Page ${index + 1}",
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     ),
//   ),
// )
