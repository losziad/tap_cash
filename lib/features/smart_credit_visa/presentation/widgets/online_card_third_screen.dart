import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_credit_visa/data/models/credit_card_model.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/manger/online_card_cubit/online_card_cubit.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/manger/online_card_cubit/online_card_states.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/services_items/header_services_page.dart';
import 'package:tab_cash/shared/components/components.dart';

class OnlineCardThirdScreen extends StatelessWidget {
  const OnlineCardThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = OnlineCardCubit.get(context);
    var passwordController = TextEditingController();

    return BlocConsumer<OnlineCardCubit, OnlineCardStates>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return Scaffold(
          appBar: sharedAppBar(text: 'Card Details'),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14.0,
                  vertical: 30.0,
                ),
                child: Container(
                  height: 270.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xff9327F0),
                        Color(0xff9327F0),
                        Color(0xff9327F0),
                        Color(0xff9327F0),
                        Color(0xff320DAF),
                      ],
                      tileMode: TileMode.mirror,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  tabCashText(),
                                  Text(
                                    'Smart Wallet',
                                    style: TextStyle(
                                      letterSpacing: 4.3,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                      color: kChildLoginScreenColor,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Image.asset(
                                'assets/images/mastercard.png',
                                height: 80.0,
                                width: 80.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            'CARD NUMBER',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            '${CreditCardModel == null ? "NUll" : cubit.cardModel!.cardNumber}',
                            style: TextStyle(
                              letterSpacing: 1.5,
                              fontSize: 25.0,
                              color: Colors.grey.shade300,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'EGP',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade300,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "${user!.balance}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              Spacer(),
                              SvgPicture.asset('assets/images/EMV Chip.svg',
                                height: 40, width: 40,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 400.0,
                          ),
                          defaultButton(
                            radius: 10,
                            color: kDefaultButtonColor,
                            function: ()
                            {
                              showModalBottomSheet(context: context,
                                builder: (context) => Column(
                                  children: [
                                    Text(
                                      'Please Enter Your Password',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12.0,
                                    ),
                                    Text(
                                      'Enter Your Password Below To Proceed Within Your Transaction',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    defaultTextFormField(
                                      controller: passwordController,
                                      validate: (value) {
                                        if (value!.isEmpty)
                                          return "Required Field..!";
                                      },
                                      text: "   Enter your password",
                                      keyboardType: TextInputType.visiblePassword,
                                      isPassword: cubit.isPassword,
                                      suffix: cubit.suffix,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    defaultButton(
                                      radius: 10,
                                      color: kDefaultButtonColor,
                                      function: () {
                                      },
                                      text: 'Confirm',
                                      textColor: Colors.white,
                                    ),
                                  ],
                                ),
                              );
                            },
                            text: 'Delete Card',
                            textColor: Colors.white,
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
// body: Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     SizedBox(
//       height: 200.0,
//     ),
//     Text(
//
//       '${CreditCardModel==null?"NUll":cubit.cardModel!.cardNumber}',
//     ),
//   ],
// ),
