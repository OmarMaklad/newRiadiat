import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';
import 'package:riadiat/features/service_provider_screen/widget/cutom_bottom.dart';

class ServiceSubscriptionScreen extends StatefulWidget {
  const ServiceSubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<ServiceSubscriptionScreen> createState() =>
      _ServiceSubscriptionScreenState();
}

class _ServiceSubscriptionScreenState extends State<ServiceSubscriptionScreen> {
  List<String> monthlyService = [
    'لوحه تحكم خاصه لاداره كل ما يتعلق \nبحسابه وتقارير المبيعات الحاليه\n فقظ..',
    'عرض الخدمات التي يمكن أن يقدمها وتحديد \nالمواعيد المتاحة وعرض صور أعماله \nفي صفحة خاصة به على سوق رياديات',
  ];

  List<String> annuallyService = [
    'لوحة تحكم خاصة لإدارة كل ما يتعلق بحسابه، بالاضافة\nالى تقارير توقعات المبيعات في المستقبل بعد\nمرور أكثر من شهرين من عمليات البيع.',
    'خصم 33% من الاشتراك الشهري، الدفع السنوي 1200\n ريال سعودي',
    'عرض الخدمات التي يمكن أن يقدمها وتحديد المواعيد\n المتاحة وعرض صور أعماله في صفحة خاصة به على\n سوق رياديات، بالإضافة إلى تصميم بنر خاص\n بما يتوافق مع الخدمات والهوية.',
    'خصم 15% على خدمات التسويق و التصوير',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            customText(
              text: 'اشتركي في مقدمي الخدمات',
              color: MyColors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
            customText(
              text: 'المميزه للاستمتاع بتقديم سلعتك للعالم',
              color: MyColors.black,
              fontSize: 12.sp,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: MyColors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 10.h,
              width: 320.w,
              decoration: BoxDecoration(
                color: MyColors.meanColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 300.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                      text: 'اشتراك شهري',
                      color: MyColors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: customText(
                        text: '150 ريال',
                        color: MyColors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 150.h,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10, bottom: 10),
                      child: Column(
                          children: List.generate(2, (index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.done,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            customText(
                              text: monthlyService[index],
                              color: MyColors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        );
                      })),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: customBottom(
                          backGroundColor: MyColors.meanColor,
                          textColor: MyColors.white,
                          onTap: () {},
                          text: 'قدمي الأن'),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 10.h,
              width: 320.w,
              decoration: BoxDecoration(
                color: MyColors.amberColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 300.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                      text: 'اشتراك سنوي',
                      color: MyColors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Row(
                        children: [
                          customText(
                            text: '4500 ريال',
                            color: MyColors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          customText(
                            text: '4800',
                            color: MyColors.black,
                            fontSize: 13.sp,
                            textDecoration: TextDecoration.lineThrough,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //height: 150.h,
                      padding: const EdgeInsets.only(
                          right: 20.0, top: 10, bottom: 10),
                      child: Column(
                          children: List.generate(4, (index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.done,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            customText(
                              text: annuallyService[index],
                              color: MyColors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        );
                      })),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: customBottom(
                          backGroundColor: MyColors.meanColor,
                          textColor: MyColors.white,
                          onTap: () {},
                          text: 'قدمي الأن'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
