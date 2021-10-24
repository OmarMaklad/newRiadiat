import 'package:flutter/material.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/my_course_screen/widget/certified_tab.dart';
import 'package:riadiat/features/my_course_screen/widget/favorite_tab.dart';
import 'package:riadiat/features/my_course_screen/widget/meeting_tab.dart';
import 'package:riadiat/features/my_course_screen/widget/my_course_tab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCourseScreen extends StatefulWidget {
  @override
  State<MyCourseScreen> createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'دوراتى',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: MyColors.bgentrePreneurs,
              child: TabBar(
                isScrollable: true,
                controller: _tabController,
                indicatorColor: MyColors.meanColor,
                labelPadding: EdgeInsets.only(left: 28, right: 28),
                tabs: [
                  Text(
                    'الدورات',
                    style: TextStyle(
                      color: MyColors.meanColor,
                    ),
                  ),
                  Text(
                    'اللقاءات',
                    style: TextStyle(
                      color: MyColors.meanColor,
                    ),
                  ),
                  Text(
                    'المفضله',
                    style: TextStyle(
                      color: MyColors.meanColor,
                    ),
                  ),
                  Text(
                    'الشهادات',
                    style: TextStyle(
                      color: MyColors.meanColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0.h,),
            Expanded(
              child: TabBarView(
                controller: _tabController,

                children: [
                  courseTab(context: context),
                  meetingTab(context: context),
                  favoriteTab(context: context),
                  certifiedTab(context: context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
