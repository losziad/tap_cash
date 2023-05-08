import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/manger/login_cubit/login_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/manger/login_cubit/login_states.dart';
import 'package:tab_cash/features/home_page_screen/home_page_screen.dart';
import 'package:tab_cash/shared/components/components.dart';

class ChildLoginScreen extends StatelessWidget {
  const ChildLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var cubit = LoginCubit.get(context);

    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is SuccessLoginState && state.userModel.status == true) {
          navigateToAndReplace(context, const HomePageScreen());

        } else if (state is SuccessLoginState &&
            state.userModel.status == false) {
          showToast(text: "wrong email or password", color: Colors.red);
        }
        if (state is ErrorLoginState) {
          showToast(text: "fail", color: Colors.red);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.network(
                          "https://images.unsplash.com/photo-1516627145497-ae6968895b74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=840&q=80"),
                      Positioned(
                        top: 200,
                        child: Container(
                          width: size.width,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            ),
                          ),
                          child: Form(
                            key: cubit.formKey,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.arrow_back_sharp),
                                      const Spacer(),
                                      SvgPicture.asset(
                                          "assets/images/login tap cash.svg"),
                                      const Spacer(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 40.12,
                                    left: 16.0,
                                    bottom: 32.0,
/*
*/
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Hi 👋 let's log in",
                                        style: TextStyle(
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w700,
                                          height: 0.33,
                                          color: kChildLoginScreenColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16.0,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Ask your parent or guardian for your login details.",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          height: 0.19,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "How do I get my login details?",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                            height: 0.19,
                                            color:
                                                kDescriptionTapCashPrivacyColor,
                                          ),
                                        ),
                                      ),
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
                  const SizedBox(
                    height: 125,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Email Address",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: defaultTextFormField(
                            controller: cubit.emailController,
                            validate: (value) {
                              if (value!.isEmpty) return "Required Field..!";
                            },
                            text: "   Enter email address",
                            keyboardType: TextInputType.emailAddress),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: defaultTextFormField(
                          controller: cubit.passwordController,
                          validate: (value) {
                            if (value!.isEmpty) return "Required Field..!";
                          },
                          text: "   Enter your password",
                          keyboardType: TextInputType.visiblePassword,
                          suffix: cubit.suffix,
                          isPassword: cubit.isPassword,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget password?",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  defaultChildButton(
                    color: kChildLoginScreenColor,
                    function: () {
                      if (cubit.formKey.currentState!.validate()) {
                        cubit.login(
                            email: cubit.emailController.text,
                            password: cubit.passwordController.text);
                      }
                    },
                    text: "Login",
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (state is LoadingLoginState)
                    const Center(
                      child: CircularProgressIndicator(
                        color: kChildLoginScreenColor,
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
