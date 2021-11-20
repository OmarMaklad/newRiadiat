import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:riadiat/bottom_navigation_bar/cubit/layout_states.dart';
import 'package:riadiat/features/main_screen/home_screen.dart';
import 'package:riadiat/features/message_screen/message_screen.dart';
import 'package:riadiat/features/profile_screen/profile_screen.dart';
import 'package:riadiat/features/service_provider_screen/service_provider_screen.dart';

class LayoutCubit extends Cubit<RiadiatLayoutStates> {
  LayoutCubit() : super(RiadiatInitialLayout());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.menu),
      label: "القائمه",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.volunteer_activism_outlined),
      label: "مقدمي الخدمات",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.messenger_outline),
      label: "الرسائل",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_outlined),
      label: "الحساب",
    ),
  ];

  List<Widget> screens = [
    HomeScreen(),
    ServiceProviderScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];

  void changeBottomNavigationBar(index) {
     currentIndex = index;
     emit(RiadiatBottomNavigationBar());
  }
}
