import 'package:tab_cash/features/authentication/data/models/register_user_model.dart';

abstract class RegisterStates{}
class InitialRegisterState extends RegisterStates{

}
class SuccessRegisterState extends RegisterStates{
  UserRegisterModel userModel;

  SuccessRegisterState(this.userModel);
}
class ErrorRegisterState extends RegisterStates{}

class LoadingRegisterState extends RegisterStates{}

class RegisterChangePasswordVisibilityState extends RegisterStates{}

class RegisterLoadingState extends RegisterStates{}