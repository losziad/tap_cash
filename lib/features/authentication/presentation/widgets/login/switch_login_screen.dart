import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/login/child_login_screen.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/login/login_screen.dart';
import 'package:tab_cash/shared/components/components.dart';

class SwitchLoginScreen extends StatelessWidget {
  const SwitchLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 19.0),
              child: Row(
                //Size: 18px / Weight: Bold / Line Height: 28px
                children: [
                  InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/images/Arrow Right.svg")),
                  Spacer(),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Spacer(),
                ],
              ),
            ),
            SvgPicture.asset("assets/images/Tapcash only.svg"), // Tap Cash

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: myDivider(),
            ), // divider
            Text(
              "which account are you logging into?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),

            SizedBox(
              height: 54,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      navigateTo(
                        context,
                        LoginScreen(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: kDefaultButtonColor,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurStyle: BlurStyle.outer,
                              color: kDefaultButtonColor,
                              offset: Offset(0, 0),
                              blurRadius: 0.4,
                            )
                          ]),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            'User Account',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: kDefaultButtonColor,
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/images/arrow-right.svg",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  InkWell(
                    onTap: () {
                      navigateTo(
                        context,
                        ChildLoginScreen(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: kChildLoginScreenColor,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: kChildLoginScreenColor,
                            offset: Offset(0, 0),
                            blurRadius: 0.4,
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            'Child Account 🧒',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: kChildLoginScreenColor,
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/images/arrow-right.svg",
                            color:kChildLoginScreenColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
