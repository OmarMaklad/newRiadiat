import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';

class AllServicesProviderScreen extends StatefulWidget {
  const AllServicesProviderScreen({Key? key}) : super(key: key);

  @override
  State<AllServicesProviderScreen> createState() =>
      _AllServicesProviderScreenState();
}

class _AllServicesProviderScreenState extends State<AllServicesProviderScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  List<Color> colors = [
    Colors.green,
    Colors.yellow,
    Colors.black,
  ];
  List<String> strings = [
    'اونلاين',
    'داخل المقر',
    'خارج المقر',
  ];
  List<String> titles = [
    'الكل',
    'اونلاين',
    'داخل المقر',
    'خارج المقر',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(
            color: MyColors.black, text: 'مقدمي الخدمات', fontSize: 15.sp),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: MyColors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {
              print('search our Services');
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 250.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) {
                  return Container(
                    width: 75.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 15.h,
                          width: 15.w,
                          color: colors[index],
                        ),
                        customText(
                          text: strings[index],
                          color: MyColors.black,
                          fontSize: 13.sp,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
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
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            right: 8.0,
                            top: 8.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30.r,
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
                                  Row(
                                    children: [
                                      customText(
                                        text: 'نهال احمد',
                                        color: MyColors.black,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      customText(
                                        text: '4.5',
                                        color: MyColors.black,
                                        fontSize: 14.sp,
                                      ),
                                    ],
                                  ),
                                  customText(
                                    text: 'رائده اعمال في مجال تصميم الأزياء',
                                    color: MyColors.black,
                                    fontSize: 12.sp,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 30.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  border: Border.all(
                                    width: 1,
                                    color: MyColors.meanColor,
                                  ),
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.chat_bubble_outline,
                                    color: MyColors.meanColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
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
