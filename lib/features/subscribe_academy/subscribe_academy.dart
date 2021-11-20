import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/message_screen/widget/new_chat.dart';
import 'package:riadiat/features/message_screen/widget/rooming_chat.dart';
import 'package:riadiat/features/subscribe_academy/widget/sub_global_academy.dart';
import 'package:riadiat/features/subscribe_academy/widget/sub_specialized_academy.dart';




class SubscribeAcademy extends StatefulWidget {

  @override
  State<SubscribeAcademy> createState() => _SubscribeAcademyState();
}

class _SubscribeAcademyState extends State<SubscribeAcademy> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new  TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'اشتراكى فى الاكاديميه',
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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 600.0.h,
          child: Column(
            children: [
              SizedBox(
                height: 20.0.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.0.w),
                child: Container(
                  color: Theme.of(context).canvasColor,
                  child: TabBar(
                    // isScrollable: true,
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.transparent,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Container(
                        width: 150.0.w,
                        height: 40.0.h,
                        decoration: BoxDecoration(
                          color: MyColors.bgentrePreneurs,
                          borderRadius: BorderRadius.circular(5.0.r),
                        ),
                        child: Center(
                          child: Text(
                            'الاكاديميه العامه',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150.0.w,
                        height: 40.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0.r),
                          color: MyColors.meanColor.withOpacity(0.1),
                        ),
                        child: Center(
                          child: Text(
                            'الاكاديميه المتخصصه',
                            style: TextStyle(
                              color: MyColors.meanColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    customGlobalAcademy(context: context),
                    customSpecializedAcademy(context: context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
