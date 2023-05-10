import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/services_items/header_services_page.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/services_items/services_inkwell_item.dart';
import 'package:tab_cash/shared/components/components.dart';

import 'education_service_screen.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFC0C0C0),
      appBar: sharedAppBar(
        text: 'Services',
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  decoration: kDecorationServices,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headerServicePage(headerText: 'TOTAL BALANCE'),
                      SizedBox(
                        height: 16,
                      ),
                      serviceCurrencyText(text: 'EGP'),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headerServicePage(headerText: 'SERVICE PAYMENTS'),
                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "Pay bills, recharge your mobile credit, donate and more using Tap Cash Smart Wallet.",
                      style: TextStyle(
                        fontSize: 14,
                        color: kDescriptionTapCashPrivacyColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ServiceInkWellItem(
                      text: 'Telecom & Internet',
                      function: (){},
                      imageForCard: 'arrow-right.svg',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ServiceInkWellItem(
                      imageForCard: 'arrow-right.svg',
                      function: (){},
                      text: 'Donations',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ServiceInkWellItem(
                      imageForCard: 'arrow-right.svg',
                      function: (){},
                      text: 'Utilities',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ServiceInkWellItem(
                      imageForCard: 'arrow-right.svg',
                      function: ()
                      {
                        navigateTo(context, EducationScreen());

                      },
                      text: 'Education',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ServiceInkWellItem(
                      imageForCard: 'arrow-right.svg',
                      function: () {},
                      text: 'Subscriptions & Ads',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ServiceInkWellItem(
                      imageForCard: 'arrow-right.svg',
                      function: () {},
                      text: 'Tickets',
                    ),
                    SizedBox(
                      height: 12,
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
