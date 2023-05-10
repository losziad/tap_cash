import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/home_page_screen/presentation/widgets/home_page_screen_items/home_page_card_medium_size.dart';
import 'package:tab_cash/features/home_page_screen/presentation/widgets/home_page_screen_items/home_page_card_small_size.dart';
import 'package:tab_cash/features/home_page_screen/presentation/widgets/home_page_screen_items/home_page_screen_drawer.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/widgets/online_card_first_screen.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/widgets/test.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/add_to_wallet/add_to_wallet.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/education_service_screen.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/services/services.dart';
import 'package:tab_cash/features/smart_wallet/presentation/widgets/transfer_money/transfer_money.dart';
import 'package:tab_cash/shared/components/components.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);

  //For Drawer
  GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      drawer: buildDrawer(context),
      backgroundColor: Colors.white70,
      body: Container(
        decoration: kHomePageScreenBackGroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            globalKey.currentState!.openDrawer();
                          },
                          icon: Icon(
                            Icons.view_headline,
                            color: Colors.white,
                            size: 36.0,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                            size: 36.0,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  const Text(
                    'Your Total Balance',
                    style: TextStyle(
                      color: kServiceDefaultColor,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  const Text(
                    'EGP',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    '${user!.balance}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 200.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
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
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Overview',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          HomePageOneCard(
                            textTitle: 'Children\'s Wallet',
                            function: () {},
                            imageForCard: 'childrenWallet.png',
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Column(
                        children: [
                          HomePageOneCard(
                            textTitle: 'View Transactions',
                            function: () {},
                            imageForCard: 'view.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          HomePageOneCardSmallSize(
                            textTitle: 'Send Money',
                            function: () {
                              navigateTo(context, TransferMoneyScreen());
                            },
                            imageForCard: 'sendMoney.png',
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        children: [
                          HomePageOneCardSmallSize(
                            textTitle: 'Purchase',
                            function: () {},
                            imageForCard: 'purchase.png',
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        children: [
                          HomePageOneCardSmallSize(
                            textTitle: 'Withdraw',
                            function: () {},
                            imageForCard: 'withdraw.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          HomePageOneCardSmallSize(
                            textTitle: 'Add Money',
                            function: () {
                              navigateTo(context, AddToWalletScreen());
                            },
                            imageForCard: 'loadMoney.png',
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        children: [
                          HomePageOneCardSmallSize(
                            textTitle: 'Services',
                            function: () {
                              navigateTo(context, ServicesScreen());
                            },
                            imageForCard: 'services.png',
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        children: [
                          HomePageOneCardSmallSize(
                            textTitle: 'Online Card',
                            function: ()
                            {
                              navigateTo(context, OnlineCard(),);
                            },
                            imageForCard: 'onlineCard.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
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
