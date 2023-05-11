import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/home/home_authentication_screen.dart';
import 'package:tab_cash/features/home_page_screen/presentation/widgets/home_page_screen_items/gesture_detector_drawer_items.dart';
import 'package:tab_cash/features/home_page_screen/presentation/widgets/home_page_screen_items/header_gesture_drawer_item.dart';
import 'package:tab_cash/features/home_page_screen/presentation/widgets/home_page_screen_items/inkwell_drawer_item.dart';
import 'package:tab_cash/features/profile/presentation/widgets/profile_screen.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/widgets/online_card_first_screen.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/add_to_wallet/add_to_wallet.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/education_service_screen.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/services.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/transfer_money/transfer_money.dart';
import 'package:tab_cash/shared/components/components.dart';


Drawer buildDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.grey[100],
    child: ListView(
      children: [
        DrawerHeader(
          child: GestureDetectorDrawerHeaderItems(
            imageForCard: 'profileDrawer.png',
            function: (){
              navigateTo(context, ProfileScreen());
            },
            textTitle: 'Profile',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18.0,
          ),
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetectorDrawerItems(
                    textTitle: 'Children\'s Wallet',
                    function: (){},
                    imageForCard: 'childrenDrawer.png',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  GestureDetectorDrawerItems(
                    textTitle: 'Dashboard',
                    function: (){},
                    imageForCard: 'dashboard.png',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  GestureDetectorDrawerItems(
                    textTitle: 'Send Money',
                    function: ()
                    {
                      navigateTo(context, TransferMoneyScreen(),);

                    },
                    imageForCard: 'sendDrawer.png',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  GestureDetectorDrawerItems(
                    textTitle: 'Purchase',
                    function: (){},
                    imageForCard: 'purchaseDrawer.png',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  GestureDetectorDrawerItems(
                    textTitle: 'Withdraw',
                    function: (){},
                    imageForCard: 'withdraw.png',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  GestureDetectorDrawerItems(
                    textTitle: 'Add Money',
                    function: ()
                    {
                      navigateTo(context, AddToWalletScreen(),);
                    },
                    imageForCard: 'loadMoney.png',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  GestureDetectorDrawerItems(
                    textTitle: 'Services',
                    function: ()
                    {
                      navigateTo(context, ServicesScreen());

                    },
                    imageForCard: 'services.png',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  GestureDetectorDrawerItems(
                    textTitle: 'Online Card',
                    function: ()
                    {
                      navigateTo(context, OnlineCard(),);
                    },
                    imageForCard: 'onlineCardD.png',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  myDivider(),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWellDarwerItem(
                    text: 'Notifications',
                    function: (){},
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWellDarwerItem(
                    function: (){},
                    text: 'Merchants'
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWellDarwerItem(
                    text: 'Transaction History',
                    function: (){},
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWellDarwerItem(
                    function: (){},
                    text: 'Favorites',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWellDarwerItem(
                    text: 'Setting',
                    function: (){},
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWellDarwerItem(
                    function: (){},
                    text: 'Service Information',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWellDarwerItem(
                    text: 'Find Us',
                    function: (){},
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWellDarwerItem(
                    function: (){},
                    text: 'Contact Us'
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  myDivider(),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWellDarwerItem(
                    text: 'Language',
                    function: (){},
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  myDivider(),

                  SizedBox(
                    height: 20.0,
                  ),
                  InkWellDarwerItem(
                    function: ()
                    {
                      navigateToAndReplace(context, HomeAuthenticationScreen());
                    },
                    text: 'Log Out'
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
