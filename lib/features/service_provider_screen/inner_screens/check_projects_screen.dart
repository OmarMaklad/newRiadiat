import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';
import 'package:riadiat/features/service_provider_screen/widget/cutom_bottom.dart';

class CheckProjectsScreen extends StatefulWidget {
  const CheckProjectsScreen({Key? key}) : super(key: key);

  @override
  _CheckProjectsScreenState createState() => _CheckProjectsScreenState();
}

class _CheckProjectsScreenState extends State<CheckProjectsScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  List<String> titles = [
    'الكل',
    'اونلاين',
    'داخل المقر',
    'خارج المقر',
  ];
  Map<String, dynamic>? checkBoxDate = {
    "تسليمات هذا الاسبوع": false,
    "تسليمات هذا الشهر": false,
    "مر وقت التسليم": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 180.h,
                    decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        customText(
                          text: 'وقت التسليم',
                          color: MyColors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: checkBoxDate!.keys.map((e) {
                            print(checkBoxDate![e]);
                            return Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Row(
                                children: [
                                  Checkbox(
                                      fillColor:
                                          MaterialStateProperty.all<Color>(
                                              MyColors.meanColor),
                                      activeColor: MyColors.black,
                                      value: checkBoxDate![e],
                                      onChanged: (value) {
                                        setState(() {
                                          checkBoxDate![e] = value;
                                        });
                                      }),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    e,
                                    style: TextStyle(
                                        fontSize: 15.0.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 25.h,
              child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.greenAccent[100],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0.r),
                  ),
                  // isScrollable: true,
                  controller: _tabController,
                  indicatorColor: Colors.transparent,
                  labelColor: MyColors.meanColor,
                  unselectedLabelColor: Colors.grey,
                  labelPadding: const EdgeInsets.all(4),
                  tabs: List.generate(4, (index) {
                    return Center(
                      child: Text(
                        titles[index],
                      ),
                    );
                  })),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 30.h,
            color: Colors.orange[100],
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.warning_amber_outlined,
                  color: Colors.deepOrange,
                  size: 30,
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                      text: 'يجب تسليم المشروع اليوم',
                      color: Colors.deepOrange,
                      fontSize: 9.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    customText(
                      text:
                          'يرجي العلم انه اذا لم يتم تسليم المشروع اليوم ستتعرض للمسأله القانونيه',
                      color: Colors.deepOrange,
                      fontSize: 8.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 500.h,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 25.r,
                                backgroundImage: NetworkImage(
                                  "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  customText(
                                    text: 'تصميم داخلي لغرفه أزياء',
                                    color: MyColors.black,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  customText(
                                    text: 'علا مصطفي',
                                    color: MyColors.black,
                                    fontSize: 12.sp,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.watch_later_outlined),
                              const SizedBox(
                                width: 5,
                              ),
                              customText(
                                text: 'انتهي الوقت',
                                color: MyColors.black,
                                fontSize: 12.sp,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 250.w,
                          child: customText(
                            text:
                                'حصلت علي جوائز عديده ولها شركات ناجحه في المملكه وخارجها خبره 5 سنوات في رياده الاعمال',
                            color: MyColors.black,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        customBottom(
                          backGroundColor: MyColors.meanColor,
                          textColor: MyColors.white,
                          onTap: () {},
                          text: 'تم الانتهاء',
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.black12,
                        )
                      ],
                    );
                  },
                ),
                Container(),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
