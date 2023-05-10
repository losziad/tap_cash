import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/services_items/header_services_page.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/university.dart';
import 'package:tab_cash/shared/components/components.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFC0C0C0),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF414EA3),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
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
                      const SizedBox(
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
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Services / Education",
                      style: TextStyle(
                        fontSize: 20,
                        color: kServiceEducationColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        navigateTo(
                            context,
                            UniversityScreen(
                              universityName: "Ain Shams University",
                              fess: 1500,
                            ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurStyle: BlurStyle.outer,
                                blurRadius: 4,
                              ),
                            ]),
                        child: Row(
                          children: [
                            const Text("Ain Shams University"),
                            const Spacer(),
                            SvgPicture.asset(
                              "assets/images/arrow-right.svg",
                              color: kServiceDefaultColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    InkWell(
                      onTap: () {
                        navigateTo(
                            context,
                            UniversityScreen(
                              universityName: "Cairo University",
                              fess: 2000,
                            ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurStyle: BlurStyle.outer,
                                blurRadius: 4,
                              ),
                            ]),
                        child: Row(
                          children: [
                            Text("Cairo University"),
                            Spacer(),
                            SvgPicture.asset(
                              "assets/images/arrow-right.svg",
                              color: kServiceDefaultColor,
                            ),
                          ],
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
    );
  }
}
