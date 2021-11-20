import 'package:flutter/material.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/my_course_screen/widget/favorite_tab.dart';
import 'package:riadiat/features/my_course_screen/widget/meeting_tab.dart';
import 'package:riadiat/features/my_course_screen/widget/my_course_tab.dart';
import 'package:riadiat/features/search_screen/custom_academy_search_screen/custom_academy_search_screen.dart';
import 'package:riadiat/features/search_screen/custom_all_search_screen/custom_all_search_screen.dart';
import 'package:riadiat/features/search_screen/custom_training_search_screen/custom_training_search_screen.dart';
import 'package:riadiat/features/widgets/custom_search_header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: 10.0.h,
                  ),
                  SizedBox(
                    child: searchingHeader(
                      context: context,
                      onTapRight: () {
                        Navigator.of(context).pop();
                      },
                      iconsRight: Icon(
                        Icons.arrow_back,
                        size: 25,
                      ),
                      hintText: "خطه",
                      onChange: (value) {
                        print(value);
                      },
                      onPressed: () {
                        print('searching');
                      },
                      onTapLeft: () {
                        print('go to training');
                      },
                      iconLeft: Icon(
                        Icons.tune_outlined,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: MyColors.bgentrePreneurs,
                    child: TabBar(
                      isScrollable: true,
                      controller: _tabController,
                      indicatorColor: MyColors.meanColor,
                      labelColor: MyColors.meanColor,
                      unselectedLabelColor: Colors.grey,
                      labelPadding: EdgeInsets.only(left: 10, right: 20),
                      tabs: [
                        Container(
                          width: 93.0.w,
                          child: Text(
                            'الكل',
                          ),
                        ),
                        Container(
                          width: 93.0.w,
                          child: Text(
                            'الاكاديميه',
                          ),
                        ),
                        Container(
                          width: 93.0.w,
                          child: Padding(
                            padding: EdgeInsets.only(right: 20.0.w),
                            child: Text(
                              'مدربين',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        AllSearchScreen(),
                        AcademySearchScreen(),
                        TrainingSearchScreen(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
