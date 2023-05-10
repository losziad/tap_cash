import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/transfer_money_cubit/transfer_money_states.dart';


class TransferMoneyCubit extends Cubit<TransferMoneyStates> {
  TransferMoneyCubit() : super(InitialTransferMoneyState());

  static TransferMoneyCubit get(context) => BlocProvider.of(context);

  var userNameController=TextEditingController();
  var moneyController=TextEditingController();
  var formKey=GlobalKey<FormState>();

  void transferMoneyFromAccountToAccountByUserName(
      {required String recipientUsername, required double money}) {
    emit(TransferMoneyLoadingState());
    if(money<=user!.balance) {
      final dio = Dio();
      dio.post("https://odc-fintech.onrender.com/api/user/transfer", data: {
        "senderUsername": "${user!.userName}",
        "recipientUsername": recipientUsername,
        "amount": money
      }).then((value) {
        emit(TransferMoneySuccessState());

      }).catchError((error) {
        print(error.toString());
        emit(TransferMoneyErrorState());
      });
    }
    else
      emit(LowBalanceState());
  }
}
