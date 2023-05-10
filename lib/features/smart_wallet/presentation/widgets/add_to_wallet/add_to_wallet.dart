import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/button_navigation_bar/presentation/manger/button_navigation_cubit.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/add_to_wallet_cubit/add_to_wallet_cubit.dart';
import 'package:tab_cash/features/smart_wallet/presentation/manger/add_to_wallet_cubit/add_to_wallet_states.dart';
import 'package:tab_cash/shared/components/components.dart';



class AddToWalletScreen extends StatelessWidget {
  var moneyController=TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var cubit=AddToWalletCubit.get(context);
    return BlocConsumer<AddToWalletCubit,AddToWalletStates>(
      listener: (context,state){

        if(state is AddToWalletSuccessfulState)
        {

          showToast(text: "Success Process", color: Colors.green);
          ButtonNavigationCubit.get(context).getProfileData();
          Navigator.pop(context);          }
      },
      builder: (context,state){

        return Scaffold(
          appBar: AppBar(
            backgroundColor: kDefaultButtonColor,
            elevation: 0.0,
            title: Text("Add Money To Your Wallet",),
          ),
          body: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [

                    Expanded(
                      flex: 3,
                      child: defaultTextFormField(
                        controller: moneyController,
                        validate: (value){
                          if(value==null ||value.isEmpty)
                            return "field required";
                        },
                        text:"Add Money",
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: 2,),
                    Expanded(
                      flex: 1,
                      child: defaultButton(
                          radius: 8.0,
                          color:kDefaultButtonColor,
                          function: (){
                            if(formKey.currentState!.validate())
                            {
                              cubit.addMoneyToWallet(money: double.parse(moneyController.text));
                            }
                          }, text: "confirm",
                        textColor: Colors.white,
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        );


      },

    );
  }
}
