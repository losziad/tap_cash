import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/manger/login_cubit/login_states.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/manger/online_card_cubit/online_card_cubit.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/manger/online_card_cubit/online_card_states.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/widgets/number.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/widgets/online_card_items/header_of_online_card_page.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/widgets/online_card_items/text_online_card.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/widgets/online_card_third_screen.dart';
import 'package:tab_cash/shared/components/components.dart';

class OnlineCardSecondScreen extends StatelessWidget {
  const OnlineCardSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = OnlineCardCubit.get(context);

    var passwordController = TextEditingController();

    return BlocConsumer<OnlineCardCubit, OnlineCardStates>(
      builder: (context, state) {
        return Scaffold(
          appBar: sharedAppBar(text: 'Online Card'),
          body: Form(
            key: cubit.formKey,
            child: Container(
              width: double.infinity,
              decoration: kDecorationServices,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          headerOfOnlineCardPage(),
                          SizedBox(
                            height: 25.0,
                          ),
                          textOnlineCard(),
                          SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'Enter The Amount You Would Like To Charge Your Online Card With.',
                            style: TextStyle(
                              fontSize: 14,
                              color: kServiceEducationColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          defaultTextFormField(
                            controller: cubit.balanceController,
                            validate: (value) {
                              if (value!.isEmpty) {
                                return 'Required Field...!';
                              }
                              return null;
                            },
                            text: 'Enter amount',
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          defaultTextFormField(
                            controller: passwordController,
                            validate: (value) {
                              if (value!.isEmpty) return "Required Field..!";
                            },
                            text: "   Enter your password",
                            keyboardType: TextInputType.visiblePassword,
                            isPassword: cubit.isPassword,
                            suffix: cubit.suffix,
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          defaultButton(
                            radius: 10,
                            color: kDefaultButtonColor,
                            function: () {
                              if (cubit.formKey.currentState!.validate()) {
                                cubit.onlineCard(
                                  money: cubit.balanceController.text,
                                );
                              }
                              // navigateTo(
                              //   context,
                              //   OnlineCardThirdScreen(),
                              // );
                            },
                            text: 'Generate New Card',
                            textColor: Colors.white,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          if (state is OnlineCardLoadingState)
                            const Center(child: CircularProgressIndicator()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state is OnlineCardSuccessState) {
          showToast(text: 'Success', color: Colors.green);
          navigateTo(context, OnlineCardThirdScreen());
        } else if (state is OnlineCardErrorState) {
          showToast(text: "wrong email or password", color: Colors.red);
        }
        if (state is ErrorLoginState) {
          showToast(text: "fail", color: Colors.red);
        }
      },
    );
  }
}
