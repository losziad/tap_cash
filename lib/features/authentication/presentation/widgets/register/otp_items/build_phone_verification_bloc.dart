import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/features/authentication/presentation/manger/otp_cubit/otp_cubit.dart';
import 'package:tab_cash/features/authentication/presentation/widgets/register/otp_items/show_progress_indicator.dart';
import 'package:tab_cash/features/home_page_screen/home_page_screen.dart';
import 'package:tab_cash/shared/components/components.dart';

Widget buildPhoneVerificationBloc() {
  return BlocListener<OTPCubit, OTPState>(
    listenWhen: (previous, current) {
      return previous != current;
    },
    listener: (context, state) {
      if (state is Loading) {
        showProgressIndicator(context);
      }
      if (state is PhoneOTPVerified) {
        Navigator.pop(context);
       // Navigator.of(context).pushReplacementNamed(());
        navigateToAndReplace(context, HomePageScreen());
      }
      if (state is ErrorOccurred) {
        // Navigator.pop(context);
        String errorMsg = (state).errorMsg;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMsg),
            backgroundColor: Colors.black,
            duration: Duration(seconds: 3),
          ),
        );
      }
    },
    child: Container(),
  );
}
