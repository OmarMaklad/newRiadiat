import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:riadiat/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:riadiat/constants/strings.dart';
import 'package:riadiat/features/global_academy_screen/globale_academy_screen.dart';
import 'package:riadiat/features/main_screen/home_screen.dart';
import 'package:riadiat/features/message_screen/message_screen.dart';
import 'package:riadiat/features/my_course_screen/my_course_screen.dart';
import 'package:riadiat/features/private_academy_screen/private_academy_screen.dart';
import 'package:riadiat/features/profile_screen/profile_screen.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case bottomNavigation:
        return MaterialPageRoute(
          builder: (_) => BottomNavigations(),
        );
      case profileScreen:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(),
        );
      case messageScreen:
        return MaterialPageRoute(
          builder: (_) => MessageScreen(),
        );
      case myCourseScreen:
        return MaterialPageRoute(
          builder: (_) => MyCourseScreen(),
        );
      case globalAcademyScreen:
        return MaterialPageRoute(
          builder: (_) => GlobalAcademyScreen(),
        );
      case privateAcademyScreen:
        return MaterialPageRoute(
          builder: (_) => PrivateAcademyScreen(),
        );
    }
  }
}
