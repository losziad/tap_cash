import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/button_navigation_bar/presentation/manger/button_navigation_cubit.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/transfer_money_cubit/transfer_money_cubit.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/transfer_money_cubit/transfer_money_states.dart';
import 'package:tab_cash/shared/components/components.dart';

class TransferMoneyScreen extends StatelessWidget {
  const TransferMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit=TransferMoneyCubit.get(context);
    return BlocConsumer<TransferMoneyCubit,TransferMoneyStates>(
      listener: (context,state){
        if(state is TransferMoneySuccessState)
        {
          showToast(text: "Success Process", color: Colors.green);
          ButtonNavigationCubit.get(context).getProfileData();
          Navigator.pop(context);
        }
        if(state is LowBalanceState)
        {
          showToast(text: "Low Balance", color: Colors.red);
        }
      },
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: kDefaultButtonColor,
            title: Text("Transfer Money",),
          ),
          body: Form(
            key: cubit.formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),

                  defaultTextFormField(
                      controller:cubit.moneyController ,
                      validate: (value){
                        if(value==null || value.isEmpty)
                        {
                          return "Money required";
                        }
                      },
                      text: "Money \$",
                      keyboardType: TextInputType.number),
                  SizedBox(height: 20,),
                  defaultTextFormField(
                      controller:cubit.userNameController ,
                      validate: (value){
                        if(value==null || value.isEmpty)
                        {
                          return "User Name required";
                        }
                      },
                      text: "User Name Receiver",
                      keyboardType: TextInputType.text),
                  SizedBox(height: 20,),
                  defaultButton(
                      radius:8.0,color: kDefaultButtonColor, function: (){
                    if(cubit.formKey.currentState!.validate())
                    {
                      cubit.transferMoneyFromAccountToAccountByUserName(
                          recipientUsername: cubit.userNameController.text, money: double.parse(cubit.moneyController.text));
                    }

                  }, text: "S E N D",
                    width: double.infinity,
                    textColor: Colors.white,
                  ),

                  if(state is TransferMoneyLoadingState)
                    LinearProgressIndicator(),

                ],
              ),
            ),
          ),
        );

      },
    );

  }
}
