import 'package:flutter/material.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/message_screen/widget/custom_search_message.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/features/message_screen/widget/new_chat.dart';
import 'package:riadiat/features/message_screen/widget/rooming_chat.dart';
import 'package:riadiat/features/my_course_screen/widget/meeting_tab.dart';
import 'package:riadiat/features/my_course_screen/widget/my_course_tab.dart';

class MessageScreen extends StatefulWidget {
  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'الرسائل',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 600.0.h,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SearchFormFieldMessage(
                    hintText: 'ابحث',
                    onChange: (value) {
                      print(value);
                    },
                    onPressSearch: () {
                      print('searching');
                    },
                  ),
                  SizedBox(
                    width: 10.0.w,
                  ),
                  Icon(Icons.person_add)
                ],
              ),
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
                          color: MyColors.meanColor,
                          borderRadius: BorderRadius.circular(5.0.r),
                        ),
                        child: Center(
                          child: Text(
                            'الاحداث',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150.0.w,
                        height: 40.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0.r),
                          border: Border.all(width: 1),
                        ),
                        child: Center(
                          child: Text(
                            'غرف الدردشه',
                            style: TextStyle(
                              color: Colors.black26,
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
                    customNewChat(context: context),
                    customRoomingChat(context: context),
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
