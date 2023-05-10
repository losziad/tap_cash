import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tab_cash/features/button_navigation_bar/presentation/manger/button_navigation_cubit.dart';
import 'package:tab_cash/features/button_navigation_bar/presentation/manger/button_navigation_state.dart';

class HomeLayoutScreen extends StatelessWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = ButtonNavigationCubit.get(context);
    return BlocConsumer<ButtonNavigationCubit, ButtonNavigationStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton.large(
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.black,
              child: SvgPicture.asset(
                "assets/images/float.svg",
                color: Colors.white,
                height: 30,
                width: 30,
              ),
            ),
            elevation: 0.0,
            onPressed: () {},
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            items: [

              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/home-3.svg",
                ),
                label: "home",
                activeIcon: SvgPicture.asset(
                  "assets/images/home-3.svg",
                  color: Colors.blue,
                ),
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/profie.svg",
                  ),
                  label: "Profile",
                  activeIcon: SvgPicture.asset(
                    "assets/images/profie.svg",
                    color: Colors.blue,
                  )),
            ],
            onTap: (index) {
              cubit.changeHomeScreen(index);
            },
            currentIndex: cubit.homeIndex,
          ),
          body: cubit.screens[cubit.homeIndex],
        );
      },
    );
  }
}
