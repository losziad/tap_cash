import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/services_cubit/services_states.dart';


class RemoveFromWalletCubit extends Cubit<RemoveFromWalletStates>{
  RemoveFromWalletCubit():super(RemoveFromWalletInitialState());
  static RemoveFromWalletCubit get(context)=>BlocProvider.of(context);



  void removeFromWallet({required double money}){
    emit(RemoveFromWalletLoadingState());
    final dio=Dio();
    dio.put("https://odc-fintech.onrender.com/api/user/${userId}",data: {
      "balance":user!.balance-money,
    }).then((value) {
      // getProfileData();
      emit(RemoveFromWalletSuccessfulState());


    }).catchError((error){
      print(error.toString());
      emit(RemoveFromWalletErrorState(error.toString()));
    });

  }


}