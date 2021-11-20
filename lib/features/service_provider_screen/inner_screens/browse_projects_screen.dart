import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_add_work.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_browse_work.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';
import 'package:riadiat/features/service_provider_screen/widget/cutom_bottom.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

class BrowseProjectsScreen extends StatefulWidget {
  const BrowseProjectsScreen({Key? key}) : super(key: key);

  @override
  State<BrowseProjectsScreen> createState() => _BrowseProjectsScreenState();
}

class _BrowseProjectsScreenState extends State<BrowseProjectsScreen>
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
        title: customText(
          color: MyColors.black,
          text: 'تصفحي المشاريع',
          fontSize: 15.sp,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: MyColors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.filter_alt_outlined,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 600.0.h,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                child: Container(
                  height: 40.h,
                  color: Colors.grey[200],
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: MyColors.meanColor,
                    labelColor: MyColors.meanColor,
                    unselectedLabelColor: Colors.grey[500],
                    tabs: [
                      Text(
                        'تصفحي الأعمال',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      Text(
                        'ضيفي عملك',
                        style: TextStyle(fontSize: 14.sp),
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
                    //تصفحي الأعمال
                    customBrowseWork(),
                    CustomAddWork(),
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
