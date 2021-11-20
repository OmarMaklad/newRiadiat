import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:riadiat/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:riadiat/constants/strings.dart';
import 'package:riadiat/features/auth/designation_password_screen/designation_password_screen.dart';
import 'package:riadiat/features/auth/forget_password_screen/forget_password_screen.dart';
import 'package:riadiat/features/auth/login/view.dart';
import 'package:riadiat/features/auth/sign_up/singup.dart';
import 'package:riadiat/features/auth/verification_code_screen/verification_code_screen.dart';
import 'package:riadiat/features/message_screen/chat_screen.dart';
import 'package:riadiat/features/notification_setting/notification_screen.dart';
import 'package:riadiat/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:riadiat/features/payment_way_screen/payment_way_screen.dart';
import 'package:riadiat/features/profile_screen/adding_new_card_screen/adding_new_card_screen.dart';
import 'package:riadiat/features/profile_screen/edit_or_delete_card_screen/edit_or_delete_card_screen.dart';
import 'package:riadiat/features/profile_screen/edit_or_delete_card_screen/edit_or_delete_code_screen.dart';
import 'package:riadiat/features/profile_screen/payment_card_screen/payment_card_screen.dart';
import 'package:riadiat/features/profile_screen/personal_data_edit/personal_data_edit.dart';
import 'package:riadiat/features/profile_screen/account_setting_screen/account_setting_screen.dart';
import 'package:riadiat/features/profile_screen/cancel_subscribe_screen/cancel_subscribe_screen.dart';
import 'package:riadiat/features/profile_screen/change_email_screen/change_email_screen.dart';
import 'package:riadiat/features/profile_screen/delete_account_screen/delete_account_screen.dart';
import 'package:riadiat/features/profile_screen/download_screen/download_screen.dart';
import 'package:riadiat/features/profile_screen/favorite_screen/favorite_screen.dart';
import 'package:riadiat/features/profile_screen/subscribe_screen/subscribe_screen.dart';
import 'package:riadiat/features/global_academy_screen/globale_academy_screen.dart';
import 'package:riadiat/features/main_screen/home_screen.dart';
import 'package:riadiat/features/message_screen/message_screen.dart';
import 'package:riadiat/features/my_course_screen/my_course_screen.dart';
import 'package:riadiat/features/notification_setting/notification_setting.dart';
import 'package:riadiat/features/private_academy_screen/private_academy_screen.dart';
import 'package:riadiat/features/profile_screen/profile_screen.dart';
import 'package:riadiat/features/profile_screen/personal_account_screen/personal_account_screen.dart';
import 'package:riadiat/features/search_screen/search_screen.dart';
import 'package:riadiat/features/services_provider_screen/services_provider_screen.dart';
import 'package:riadiat/features/specialized_academy/specialized_academy.dart';
import 'package:riadiat/features/subscribe_academy/subscribe_academy.dart';

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
      case specializedAcademyScreen:
        return MaterialPageRoute(
          builder: (_) => SpecializedAcademy(),
        );
      case searchScreen:
        return MaterialPageRoute(
          builder: (_) => SearchScreen(),
        );
      case personalAccountScreen:
        return MaterialPageRoute(
          builder: (_) => PersonalAccountScreen(),
        );
      case personalDataEdit:
        return MaterialPageRoute(
          builder: (_) => PersonalDataEdit(),
        );
      case notificationSetting:
        return MaterialPageRoute(
          builder: (_) => NotificationSetting(),
        );
      case accountSetting:
        return MaterialPageRoute(
          builder: (_) => AccountSetting(),
        );
      case changeEmailScreen:
        return MaterialPageRoute(
          builder: (_) => ChangeEmailScreen(),
        );
      case deleteAccountScreen:
        return MaterialPageRoute(
          builder: (_) => DeleteAccountScreen(),
        );
      case subscribeScreen:
        return MaterialPageRoute(
          builder: (_) => SubScribeScreen(),
        );
      case cancelSubscribeScreen:
        return MaterialPageRoute(
          builder: (_) => CancelSubscribeScreen(),
        );
      case favoriteScreen:
        return MaterialPageRoute(
          builder: (_) => FavoriteScreen(),
        );
      case downloadScreen:
        return MaterialPageRoute(
          builder: (_) => DownloadScreen(),
        );
      case paymentCardScreen:
        return MaterialPageRoute(
          builder: (_) => PaymentCardScreen(),
        );
      case addingNewCardScreen:
        return MaterialPageRoute(
          builder: (_) => AddingNewCardScreen(),
        );
      case editOrDeleteCardScreen:
        return MaterialPageRoute(
          builder: (_) => EditOrDeleteCardScreen(),
        );
      case editOrDeleteCodeScreen:
        return MaterialPageRoute(
          builder: (_) => EditOrDeleteCodeScreen(),
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case signUp:
        return MaterialPageRoute(
          builder: (_) => SignUp(),
        );
      case forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordScreen(),
        );
      case verificationCodeScreen:
        return MaterialPageRoute(
          builder: (_) => VerificationCodeScreen(),
        );
      case designationPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => DesignationPasswordScreen(),
        );
      case onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        );
      case notificationScreen:
        return MaterialPageRoute(
          builder: (_) => NotificationScreen(),
        );
      case chatScreen:
        return MaterialPageRoute(
          builder: (_) => ChatScreen(),
        );
      case subscribeAcademy:
        return MaterialPageRoute(
          builder: (_) => SubscribeAcademy(),
        );
      case paymentWayScreen:
        return MaterialPageRoute(
          builder: (_) => PaymentWayScreen(),
        );
      case serviceProviderScreen:
        return MaterialPageRoute(
          builder: (_) => ServiceProviderScreen(),
        );
    }
  }
}
