import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'otp_state.dart';

class OTPCubit extends Cubit<OTPState> {

  late String verificationId;
  OTPCubit() : super(PhoneAuthInitial());

  Future<void> submitPhoneNumber(String phoneNumber)async
  {
    emit(Loading());
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+2$phoneNumber',
        timeout: const Duration(seconds: 14),
        //This Parameter to read the code from my phone when the firebase send the code in SMS
        verificationCompleted: verificationCompleted,
        //This Parameter handle failure events such as invalid phone numbers or whether the SMS quota has been exceeded
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  void verificationCompleted(PhoneAuthCredential credential)async
  {
    await signIn(credential);
  }
  void verificationFailed(FirebaseAuthException error)
  {
     emit(ErrorOccurred(errorMsg: error.toString()));
  }
  void codeSent(String verificationId, int? resendToken)
  {
    this.verificationId = verificationId;
    emit(PhoneNumberSubmitted());
  }
void codeAutoRetrievalTimeout(String verificationId)
{
  print('codeAuthRetrievalTimeOut');
}
//To take OTP from my phone
Future<void> submitOTP(String otpCode)async
{
   PhoneAuthCredential credential = PhoneAuthProvider.credential(
       verificationId: this.verificationId,
       smsCode: otpCode,
   );
   await signIn(credential);
}
Future<void> signIn(PhoneAuthCredential credential)async
{
  try{
    await FirebaseAuth.instance.signInWithCredential(credential);
    emit(PhoneOTPVerified());
  }
  catch(error)
  {
    emit(ErrorOccurred(errorMsg: error.toString(),),);
  }
}
Future<void> logOUt()async{
    await FirebaseAuth.instance.signOut();
}

User getLoggedInUser(){
    User firebaseUser = FirebaseAuth.instance.currentUser!;
    return firebaseUser;
}

}
