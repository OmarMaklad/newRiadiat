import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';
import 'package:riadiat/features/main_screen/widget/cudtom_mytraining.dart';
import 'package:riadiat/features/main_screen/widget/custom_banner.dart';
import 'package:riadiat/features/main_screen/widget/custom_carousel.dart';
import 'package:riadiat/features/main_screen/widget/custom_entrepreneurs.dart';
import 'package:riadiat/features/main_screen/widget/custom_gird_view.dart';
import 'package:riadiat/features/main_screen/widget/custom_join_network.dart';
import 'package:riadiat/features/main_screen/widget/custom_my_session.dart';
import 'package:riadiat/features/main_screen/widget/custom_scroll_acadmy.dart';
import 'package:riadiat/features/widgets/custom_search_header.dart';
import 'package:riadiat/features/widgets/custom_title_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
            width: 200.0.w,
            height: 35.0.h,
            image: AssetImage('assets/images/logo.png')),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              searchingHeader(
                context: context,
                onTapRight: () {
                  Navigator.pushNamed(context, notificationScreen);
                },
                iconsRight: Icon(
                  MdiIcons.bellOutline,
                  size: 30,
                ),
                hintText: "ابحثى عن دورات تدريبيه رائدات اعمال",
                onChange: (value) {
                  print(value);
                },
                onPressed: () {
                  Navigator.pushNamed(context, searchScreen);
                },
                onTapLeft: () {
                  print('go to training');
                },
                iconLeft: Icon(
                  Icons.play_circle_outline,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomCarousel(),
              SizedBox(
                height: 20.h,
              ),
              titleRow(
                title: "تابعى دوراتك",
                showAll: "عرض الكل",
                onTap: () {
                  Navigator.pushNamed(context, myCourseScreen);
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              customMyTraining(context),
              SizedBox(
                height: 30.h,
              ),
              customBanner(context),
              SizedBox(
                height: 15.h,
              ),
              titleRow(
                title: "الاكاديمه العامه",
                showAll: "عرض الكل",
                onTap: () {
                  Navigator.pushNamed(context, globalAcademyScreen);
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              customScrollAcademy(context),
              SizedBox(
                height: 15.h,
              ),
              titleRow(
                title: "الاكاديمه الخاصه",
                showAll: "عرض الكل",
                onTap: () {
                  Navigator.pushNamed(context, privateAcademyScreen);
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              customScrollAcademy(context),
              SizedBox(
                height: 15.h,
              ),
              titleRow(
                title: "دورات فى المقر",
                showAll: "عرض الكل",
                onTap: () {
                  Navigator.pushNamed(context, specializedAcademyScreen);
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              customMySession(context),
              SizedBox(
                height: 30.h,
              ),
              customRowGirdView(
                context: context,
                color1: MyColors.meanColor,
                color2: MyColors.bgConsultation,
                title1: "سجلى الان",
                title2: "اطلبى الان",
                name1: "الحاضنه",
                name2: "استشاره",
                desc1: "انضمى لحاضنه الاعمال",
                desc2: "اطلبي استشاره من خبير",
                colors1: MyColors.meanColor,
                colors2: MyColors.bgConsultation,
                onTap1: () {
                  print('1');
                },
                onTap2: () {
                  print('2');
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              customRowGirdView(
                context: context,
                color1: MyColors.bgNetwork,
                color2: MyColors.bgService,
                title1: "اشتركى الان",
                title2: "قدمي الان",
                name1: "الشيكه",
                name2: "مقدمي الخدمه",
                desc1: "توصلى مع رائدات الاعمال",
                desc2: "توصلى مع رائدات الاعمال",
                colors1: MyColors.bgNetwork,
                colors2: MyColors.bgService,
                onTap1: () {
                  print('3');
                },
                onTap2: () {
                  print('4');
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              titleRow(
                title: "رائدات الاعمال",
                showAll: "عرض الكل",
                onTap: () {
                  print('show all');
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              customEntrepeneurs(context: context),
              SizedBox(
                height: 40.h,
              ),
              customJoinNetwork(context: context),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
