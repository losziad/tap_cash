import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/button_navigation_bar/presentation/manger/button_navigation_cubit.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/services_cubit/services_cubit.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/services_cubit/services_states.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/services_items/header_services_page.dart';
import 'package:tab_cash/shared/components/components.dart';

class UniversityScreen extends StatelessWidget {
  String universityName;
  double fess;
  var studentId = TextEditingController();
  var formKey = GlobalKey<FormState>();

  UniversityScreen({required this.universityName, required this.fess});

  @override
  Widget build(BuildContext context) {
    var cubit = RemoveFromWalletCubit.get(context);
    return BlocConsumer<RemoveFromWalletCubit, RemoveFromWalletStates>(
      listener: (context, state) {
        if (state is RemoveFromWalletSuccessfulState) {
          ButtonNavigationCubit.get(context).getProfileData();
        }
      },
      builder: (context, state) {
        return Scaffold(
          // backgroundColor: Color(0xFFC0C0C0),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xFF414EA3),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Services",
                ),
              ],
            ),
          ),
          body: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            headerServicePage(
                              headerText: 'TOTAL BALANCE',
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            serviceCurrencyText(
                              text: 'EGP',
                            ),
                            Text(
                              "${user!.balance}",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Services / Education",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: kServiceDefaultColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            universityName,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: kServiceDefaultColor,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Student Number",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF263699),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          defaultTextFormField(
                              controller: studentId,
                              validate: (value) {
                                if (value == null || value.isEmpty)
                                  return "Student Number is Required";
                              },
                              text: "Student Number",
                              keyboardType: TextInputType.number),
                          SizedBox(
                            height: 64,
                          ),
                          defaultButton(
                            radius: 10,
                            color: kDefaultButtonColor,
                            function: () {
                              if (formKey.currentState!.validate()) {
                                cubit.removeFromWallet(money: fess);
                              }
                            },
                            text: "Submit",
                            textColor: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          if (state is RemoveFromWalletLoadingState)
                            CircularProgressIndicator(
                              color: kDefaultButtonColor,
                            ),
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
    );
  }
}
