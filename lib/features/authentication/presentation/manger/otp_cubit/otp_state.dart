part of 'otp_cubit.dart';

@immutable
abstract class OTPState {}

class PhoneAuthInitial extends OTPState {}

class Loading extends OTPState{}

class ErrorOccurred extends OTPState{
  final String errorMsg;
  ErrorOccurred({required this.errorMsg});
}
class PhoneNumberSubmitted extends OTPState{}

class PhoneOTPVerified extends OTPState{}
