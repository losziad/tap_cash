import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/add_to_wallet_cubit/add_to_wallet_states.dart';

class AddToWalletCubit extends Cubit<AddToWalletStates>{
  AddToWalletCubit():super(AddToWalletInitialState());
  static AddToWalletCubit get(context)=>BlocProvider.of(context);



  void addMoneyToWallet({required double money}){
    emit(AddToWalletLoadingState());
    final dio=Dio();
    dio.put("https://odc-fintech.onrender.com/api/user/${userId}",data: {
      "balance":user!.balance+money,
    }).then((value) {
      // getProfileData();
      emit(AddToWalletSuccessfulState());


    }).catchError((error){
      print(error.toString());
      emit(AddToWalletErrorState(error.toString()));
    });

  }


}