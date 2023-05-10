import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_credit_visa/data/models/credit_card_model.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/manger/online_card_cubit/online_card_cubit.dart';

class Number extends StatelessWidget {
   Number({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = OnlineCardCubit.get(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200.0,
          ),
          Text(

            '${CreditCardModel==null?"NUll":cubit.cardModel!.cardNumber}',
          ),
        ],
      ),
    );
  }
}
