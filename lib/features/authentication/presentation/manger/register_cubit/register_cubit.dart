import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/data/models/register_user_model.dart';
import 'package:tab_cash/features/authentication/presentation/manger/register_cubit/register_states.dart';
import 'package:tab_cash/shared/network/remote/dio_helper.dart';


class RegisterCubit extends Cubit<RegisterStates>
{
  RegisterCubit():super(InitialRegisterState());
  static RegisterCubit get(context)=>BlocProvider.of(context);

  var formKey = GlobalKey<FormState>();

  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var userNameController = TextEditingController();

  UserRegisterModel? userModel;
/*	"firstName": "kamal",
    "lastName":"kamel",
    "email": "kaml@gmail.com",
    "phone":"0110101001",
    "password":"123456789",
    "userName":"kamal23"*/
  void register({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String userName,
    required String password,

  }){

    emit(LoadingRegisterState());
    DioHelper.postData(url: "signup", data: {
      "firstName": firstName,
      "lastName":lastName,
      "email": email,
      "phone":phone,
      "password":password,
    //  "balance":1000,
      "userName":userName,
    }).then((value) {

      userModel=UserRegisterModel.fromJson(value.data);
      userId=value.data["data"];
      print("user id :  ${userId} ");
      emit(SuccessRegisterState(userModel!));
    }).catchError((error){
      print(error.toString());
      emit(ErrorRegisterState());
    });

  }
  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
    isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(RegisterChangePasswordVisibilityState());
  }
}