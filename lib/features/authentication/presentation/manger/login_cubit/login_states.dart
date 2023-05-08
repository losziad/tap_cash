
import 'package:tab_cash/features/authentication/data/models/user_login_model.dart';

abstract class LoginStates{}
class InitialLoginState extends LoginStates{

}
class SuccessLoginState extends LoginStates{
  UserLoginModel userModel;

  SuccessLoginState(this.userModel);
}
class ErrorLoginState extends LoginStates{}

class LoadingLoginState extends LoginStates{}

class LoginChangePasswordVisibilityState extends LoginStates{}