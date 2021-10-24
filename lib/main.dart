import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:riadiat/app_route.dart';
import 'package:riadiat/bottom_navigation_bar/cubit/layout_cubit.dart';
import 'package:riadiat/constants/strings.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeType: LocalizationDefaultType.asDefined,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/lang/',
  );

  runApp(
    LocalizedApp(
      child: MyApp(
        appRoute: AppRoute(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRoute? appRoute;

  MyApp({this.appRoute});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => LayoutCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Riadiat',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: bottomNavigation,
          onGenerateRoute: appRoute!.generateRoute,
          localizationsDelegates:
              translator.delegates, // Android + iOS Delegates
          locale: translator.activeLocale, // Active locale
          supportedLocales: translator.locals(),
        ),
      ),
    );
  }
}
