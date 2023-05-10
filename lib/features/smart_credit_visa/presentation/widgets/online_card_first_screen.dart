import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/manger/online_card_cubit/online_card_cubit.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/widgets/online_card_items/header_of_online_card_page.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/widgets/online_card_items/text_online_card.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/widgets/online_card_second_screen.dart';
import 'package:tab_cash/shared/components/components.dart';

class OnlineCard extends StatelessWidget {
  const OnlineCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = OnlineCardCubit.get(context);

    return Scaffold(
      appBar: sharedAppBar(text: 'Online Card'),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: headerOfOnlineCardPage(),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                width: double.infinity,
                decoration: kDecorationServices,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textOnlineCard(),
                    SizedBox(
                      height: 40.0,
                    ),
                    defaultButton(
                      radius: 10,
                      color: kDefaultButtonColor,
                      function: () {
                        navigateTo(context, OnlineCardSecondScreen(),);
                      },
                      text: 'Generate New Card',
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                width: double.infinity,
                decoration: kDecorationServices,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MY CARDS',
                      style: TextStyle(
                        fontSize: 20,
                        color: kChildLoginScreenColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 300,
                    ),

                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }


}
