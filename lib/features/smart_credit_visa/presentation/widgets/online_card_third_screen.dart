import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_credit_visa/data/models/credit_card_model.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/manger/online_card_cubit/online_card_cubit.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/manger/online_card_cubit/online_card_states.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/widgets/online_card_items/bottom_sheet_online_card.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/services_items/header_services_page.dart';
import 'package:tab_cash/shared/components/components.dart';

class OnlineCardThirdScreen extends StatelessWidget {
  const OnlineCardThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = OnlineCardCubit.get(context);
    var passwordController = TextEditingController();

    return BlocConsumer<OnlineCardCubit, OnlineCardStates>(
      listener: (context, state) {},
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
                  width: double.infinity,
                  height: 260.0,
                  decoration: kDecorationOnlineCard,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Valid Until',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  ),

                                ),
                                Text(
                                  '05/25',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  ),

                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              'assets/images/EMV Chip.svg',
                              height: 40,
                              width: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 300.0,
              ),
              defaultButton(
                function: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) =>
                        bottomSheetOnlineCard(passwordController, cubit),
                  );
                },
                radius: 10,
                text: 'Delete Card',
                textColor: kDefaultButtonColor,
                color: Colors.white,
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
