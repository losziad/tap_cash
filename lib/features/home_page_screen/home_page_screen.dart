import 'package:flutter/material.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/home_page_screen/home_page_screen_items/home_page_card_medium_size.dart';
import 'package:tab_cash/features/home_page_screen/home_page_screen_items/home_page_card_small_size.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        decoration: kHomePageScreenBackGroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
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
                         onPressed: ()
                         {

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
                         onPressed: (){},
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
                    color: Color(0xFF98A1B3),
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
                const Text(
                  '9751.65',
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
                          offset: Offset(0.0,1.0),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: const[
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
                          function: (){},
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
                          function: (){},
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
                          function: (){},
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
                          function: (){},
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
                          function: (){},
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
                          textTitle: 'Load Money',
                          function: (){},
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
                          function: (){},
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
                          function: (){},
                          imageForCard: 'onlineCard.png',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
