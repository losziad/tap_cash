import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/data/models/user_login_model.dart';
import 'package:tab_cash/features/authentication/presentation/manger/login_cubit/login_states.dart';
import 'package:tab_cash/shared/network/remote/dio_helper.dart';


class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit():super(InitialLoginState());
  static LoginCubit get(context)=>BlocProvider.of(context);

  var formKey=GlobalKey<FormState>();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  UserLoginModel? userModel;

  void login({
    required String email,
    required String password,
  }){
    emit(LoadingLoginState());
    DioHelper.postData(url: "login", data: {
      "email":email,
      "password":password,
    }).then((value) {

      userModel=UserLoginModel.fromJson(value.data);
      userId=value.data["user"];
      print("user id :  ${userId} ");
      emit(SuccessLoginState(userModel!));
    }).catchError((error){
      print(error.toString());
      emit(ErrorLoginState());
    });

  }
  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
    isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(LoginChangePasswordVisibilityState());
  }
}