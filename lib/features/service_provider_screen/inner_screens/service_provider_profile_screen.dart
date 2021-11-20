import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_work_list.dart';
import 'package:riadiat/features/service_provider_screen/widget/cutom_bottom.dart';
import 'package:riadiat/features/service_provider_screen/widget/no_work_list.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

class ServiceProviderProfileScreen extends StatefulWidget {
  const ServiceProviderProfileScreen({Key? key}) : super(key: key);

  @override
  State<ServiceProviderProfileScreen> createState() =>
      _ServiceProviderProfileScreenState();
}

class _ServiceProviderProfileScreenState
    extends State<ServiceProviderProfileScreen>
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
            color: MyColors.black, text: 'الصفحه الشخصيه', fontSize: 15.sp),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: MyColors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 600.0.h,
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50.r,
                  backgroundImage: NetworkImage(
                    "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              customText(
                text: 'علا مصطفي',
                color: MyColors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
              customText(
                text: 'مصممه واجهات المستخدم',
                color: MyColors.black,
                fontSize: 15.sp,
              ),
              Container(
                width: 160.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(MdiIcons.linkedin),
                    Icon(MdiIcons.instagram),
                    Icon(MdiIcons.twitter),
                    Icon(MdiIcons.facebook),
                    Icon(MdiIcons.web),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              customBottom(
                backGroundColor: MyColors.white,
                textColor: MyColors.meanColor,
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 390.h,
                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                                width: 40,
                                child: Divider(
                                  thickness: 3,
                                  color: Colors.black38,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomFromField(
                              maxLine: 12,
                              hintText: 'اكتبي تعليقك',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            customBottom(
                                backGroundColor: MyColors.meanColor,
                                textColor: MyColors.white,
                                onTap: (){},
                                text: 'أرسلي رساله'),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                                width: 150,
                                child: Divider(
                                  thickness: 3,
                                  color: Colors.black87,
                                )),
                          ],
                        ),
                      );
                    },
                  );
                },
                text: 'أرسلي رسالتك',
              ),
              const SizedBox(
                height: 10,
              ),
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
                        'قائمه الأعمال',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      Text(
                        'التقييمات',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    //خيبقي في شرط بعدين لو في قائمه اعمال او لاء
                    //قائمه الأعمال
                    customWorkList(),
                    //في حاله عدم وجود قائمه اعمال
                    //noWorkList(),
                    Center(child: Text('2')),
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
