import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_cash/core/utils/constants.dart';
import 'package:tab_cash/features/authentication/data/models/user_getter_model.dart';
import 'package:tab_cash/features/button_navigation_bar/presentation/manger/button_navigation_state.dart';
import 'package:tab_cash/features/home_page_screen/home_page_screen.dart';
import 'package:tab_cash/features/profile/presentation/widgets/profile_screen.dart';

class ButtonNavigationCubit extends Cubit<ButtonNavigationStates>
{
  ButtonNavigationCubit(): super(ButtonNavigationInitialStates());

  static ButtonNavigationCubit get(context) => BlocProvider.of(context);

  int homeIndex=0;
  void changeHomeScreen(int index){
    homeIndex=index;
    emit(ChangeHomeScreenState());
  }

  List<Widget?> screens=[
    HomePageScreen(),
    ProfileScreen(),
  ];

  void getProfileData(){
    emit(AppGetProfileLoadingState());
    final dio=Dio();
    dio.get('https://odc-fintech.onrender.com/api/user/${userId}')
    // DioHelper.getData(url:"644ff4a799de5432e6716496")
        .then((value) {
      print(value);
      user=UserGetterModel.fromJson((value.data));

      emit(AppGetProfileSuccessffulState());




    }).catchError((error){
      print(error.toString());
      emit(AppGetProfileErrorState(error.toString()));
    });


  }
}