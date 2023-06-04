import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/manger/login_cubit/login_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/manger/login_cubit/login_states.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/register_first_screen.dart';
import 'package:tab_cash/features/button_navigation_bar/presentation/widgets/button_naigation_bar.dart';
import 'package:tab_cash/shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var cubit = LoginCubit.get(context);

    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is SuccessLoginState && state.userModel.status == true) {
          navigateToAndReplace(context, const HomeLayoutScreen());

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
                      Image.asset("assets/images/login image.png",

                      ),
                      Positioned(
                        top: 250,
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
                                          "assets/images/login tap cash.svg",

                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 40.12,
                                    left: 16.0,
                                    bottom: 32.0,
                                  ),
                                  child: Row(
                                    children: const [
                                      Text(
                                        "Hi 👋 let's login",
                                          style: TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.w700,
                                            height: 0.33
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
                    height: 25.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "ُEmail Address",
                            style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: defaultTextFormField(
                            controller: cubit.emailController,
                            validate: (value) {
                              if (value == null || value.isEmpty) {
                                return "Required Field..!";
                              }
                            },
                            text: "   Enter your email address",
                            keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ],
                  ),
                  // paswsword

                  // email address
                  const SizedBox(
                    height: 24,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Password",
                            style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),

                        child: defaultTextFormField(
                          controller: cubit.passwordController,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return "Required Field..!";
                            }
                          },
                          text: "   Enter your password",
                          keyboardType: TextInputType.visiblePassword,
                          isPassword: cubit.isPassword,
                          suffix: cubit.suffix,
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
                  defaultButton(
                      color: kDefaultButtonColor,
                      function: () {
                        if (cubit.formKey.currentState!.validate()) {
                          cubit.login(
                              email: cubit.emailController.text,
                              password: cubit.passwordController.text,
                          );
                        }
                      },
                      text: "Login",
                    textColor: Colors.white,
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("You Dont't have an account?"),
                        TextButton(
                            onPressed: ()
                            {
                              navigateTo(context, const RegisterFirstScreen(),);
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 16,
                              ),
                            ))
                      ],
                    ),
                  ),

                  if (state is LoadingLoginState)
                    const Center(child: CircularProgressIndicator()),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
