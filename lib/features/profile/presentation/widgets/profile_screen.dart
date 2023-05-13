//IN PROGRESS

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/home/home_authentication_screen.dart';
import 'package:tab_cash/features/profile/presentation/widgets/profile_inkwell.dart';
import 'package:tab_cash/shared/components/components.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kHomePageScreenBackGroundColor,

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 25.0,
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: 190.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              const CircleAvatar(
                                radius: 55.0,
                                backgroundImage: AssetImage(
                                  'assets/images/profile.png',
                                ),
                                backgroundColor: Colors.white,
                              ),
                               SizedBox(
                                 height: 10.0,
                               ),
                               Text(
                                '${user!.firstName}',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '${user!.phone}',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              SizedBox(
                height: 20.0,
              ),
              profileInkWell(
                text: 'My Account',
                function: (){},
                imageForCard: 'profileAccount.png'
              ),
                  SizedBox(
                    height: 15.0,
                  ),
                  profileInkWell(
                      text: 'Children\'s Accounts',
                      function: (){},
                      imageForCard: 'childrenProfile.png'
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  profileInkWell(
                      text: 'Privacy Policy',
                      function: (){},
                      imageForCard: 'privacyProfile.png'
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  profileInkWell(
                      text: 'Settings',
                      function: (){},
                      imageForCard: 'settingProfile.png'
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  profileInkWell(
                      text: 'Help Center',
                      function: (){},
                      imageForCard: 'helpProfile.png'
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  profileInkWell(
                      text: 'Contact',
                      function: (){},
                      imageForCard: 'contactProfile.png'
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  profileInkWell(
                      text: 'Log Out',
                      function: ()
                      {
                        navigateToAndReplace(context, HomeAuthenticationScreen());
                      },
                      imageForCard: 'logoutProfile.png'
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
