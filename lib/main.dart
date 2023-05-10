import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/features/authentication/presentation/manger/login_cubit/login_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/manger/otp_cubit/otp_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/manger/register_cubit/register_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/home/home_authentication_screen.dart';
import 'package:tab_cash/features/button_navigation_bar/presentation/manger/button_navigation_cubit.dart';
import 'package:tab_cash/features/button_navigation_bar/presentation/widgets/button_naigation_bar.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/manger/online_card_cubit/online_card_cubit.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/add_to_wallet_cubit/add_to_wallet_cubit.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/services_cubit/services_cubit.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/transfer_money_cubit/transfer_money_cubit.dart';
import 'package:tab_cash/shared/bloc_observer.dart';
import 'package:tab_cash/shared/network/remote/dio_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>ButtonNavigationCubit()..getProfileData()),
        BlocProvider(create: (context)=>LoginCubit()),
        BlocProvider(create: (context)=>OTPCubit()),
        BlocProvider(create: (context)=>AddToWalletCubit()),
        BlocProvider(create: (context)=>RegisterCubit()),
        BlocProvider(create: (context)=>TransferMoneyCubit()),
        BlocProvider(create: (context)=>RemoveFromWalletCubit()),
        BlocProvider(create: (context)=>OnlineCardCubit()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: TextTheme(
              // displayLarge:GoogleFonts.nunitoSans(
              //   fontSize: 32,
              //   fontWeight: FontWeight.normal,
              //   height: 2,
              // ),

            )
        ),
        home: HomeAuthenticationScreen(),
      ),
    );
  }
}