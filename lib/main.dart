import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/features/authentication/presentation/manger/login_cubit/login_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/manger/otp_cubit/otp_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/manger/register_cubit/register_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/home/home_authentication_screen.dart';
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
        BlocProvider(create: (context)=>LoginCubit()),
        BlocProvider(create: (context)=>OTPCubit()),

        BlocProvider(create: (context)=>RegisterCubit()),
       // BlocProvider(create: (context)=>AppCubit()..getProfileData(),
        // ),
        // BlocProvider(create: (context)=>AddToWalletCubit()),

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

