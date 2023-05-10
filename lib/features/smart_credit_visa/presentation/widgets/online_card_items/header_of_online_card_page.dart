import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/services_items/header_services_page.dart';

Container headerOfOnlineCardPage() {
  return Container(
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
  );
}
