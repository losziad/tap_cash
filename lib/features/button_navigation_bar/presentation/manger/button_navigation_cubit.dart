import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  List<Widget> screens=[
    ProfileScreen(),
    HomePageScreen(),
  ];
}