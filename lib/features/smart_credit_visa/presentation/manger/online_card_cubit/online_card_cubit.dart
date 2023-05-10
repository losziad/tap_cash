import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_credit_visa/data/models/credit_card_model.dart';
import 'package:tab_cash/features/smart_credit_visa/presentation/manger/online_card_cubit/online_card_states.dart';

class OnlineCardCubit extends Cubit<OnlineCardStates> {
  OnlineCardCubit() : super(InitialOnlineCardState());

  static OnlineCardCubit get(context) => BlocProvider.of(context);

  var formKey = GlobalKey<FormState>();

  var balanceController=TextEditingController();

  CreditCardModel? cardModel;

  void onlineCard(
      {
       // required String userID,
        required dynamic money,
      })
  {
    emit(OnlineCardLoadingState());
      final dio = Dio();
      dio.post("https://odc-fintech.onrender.com/api/credit/${user!.id}",
          data: {
        "balance": money
      }).then((value) {

        cardModel=CreditCardModel.fromJson(value.data);

        userCardNumber=value.data["cardNumber"];

        print("card number :  ${userCardNumber} ");

        emit(OnlineCardSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(OnlineCardErrorState());
      });

  }


  void deleteOnlineCard(
      {
        // required String userID,
        required dynamic money,
      })
  {
    emit(DeleteOnlineCardLoadingState());
    final dio = Dio();
    dio.delete("https://odc-fintech.onrender.com/api/credit/${user!.id}",
        data: {
          "balance": money
        }).then((value) {

      cardModel=CreditCardModel.fromJson(value.data);

      userCardNumber=value.data["cardNumber"];

      print("card number :  ${userCardNumber} ");

      emit(DeleteOnlineCardSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(DeleteOnlineCardErrorState());
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
