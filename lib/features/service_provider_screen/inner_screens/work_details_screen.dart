import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';
import 'package:riadiat/features/service_provider_screen/widget/cutom_bottom.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';
import 'package:riadiat/features/widgets/custom_title_row.dart';

class WorkDetailsScreen extends StatelessWidget {
  const WorkDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: MyColors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              MdiIcons.replyOutline,
              size: 35,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220.h,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    "https://image.freepik.com/free-vector/dark-paper-layers-wallpaper-with-golden-details_23-2148403401.jpg",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                children: [
                  customText(
                    color: MyColors.black,
                    text: 'نطوير منصه رياديات',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  customText(
                    color: MyColors.black,
                    text: '122',
                    fontSize: 15.sp,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    MdiIcons.eyeOutline,
                    size: 40,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: customText(
                  color: MyColors.black,
                  text:
                      'حصلت على بكالوريوس الحاسبات و المعلومات، خبرة 5 سنوات في ريادة الأعمال، حصلت على جوائز عديدة ولها شركات ناجحة في المملكة وخارجها',
                  fontSize: 15.sp,
                  maxLines: 2),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customBottom(
                      backGroundColor: MyColors.white,
                      textColor: MyColors.meanColor,
                      onTap: () {},
                      text: 'تصميم واجهات',
                    ),
                    customBottom(
                      backGroundColor: MyColors.white,
                      textColor: MyColors.meanColor,
                      onTap: () {},
                      text: 'مبرمج أندرويد',
                    ),
                    customBottom(
                      backGroundColor: MyColors.white,
                      textColor: MyColors.meanColor,
                      onTap: () {},
                      text: 'تصميم جرافيك',
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customBottom(
                      backGroundColor: MyColors.white,
                      textColor: MyColors.meanColor,
                      onTap: () {},
                      text: 'تصميم واجهات',
                    ),
                    customBottom(
                      backGroundColor: MyColors.white,
                      textColor: MyColors.meanColor,
                      onTap: () {},
                      text: 'مبرمج أندرويد',
                    ),
                    customBottom(
                      backGroundColor: MyColors.white,
                      textColor: MyColors.meanColor,
                      onTap: () {},
                      text: 'تصميم جرافيك',
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: customText(
                text: 'المشابه',
                color: MyColors.black,
                fontSize: 16.sp,
              ),
            ),
            //المشابه
            customFamiliar(),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: customText(
                text: 'المراجعات (455)',
                color: MyColors.black,
                fontSize: 16.sp,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: customText(
                text: '4.0',
                color: MyColors.black,
                fontSize: 16.sp,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: RatingBar.builder(
                itemSize: 20.w,
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customText(
                            text: '5 نجوم',
                            color: MyColors.black,
                            fontSize: 10.sp,
                          ),
                          RatingBarIndicator(
                            rating: 4,
                            itemBuilder: (context, index) => Container(
                              height: 8,
                              width: 40,
                              color: Colors.amber,
                            ),
                            itemCount: 6,
                            itemSize: 50.0,
                            direction: Axis.horizontal,
                          ),
                          customText(
                            text: '(15)',
                            color: MyColors.black,
                            fontSize: 10.sp,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 340.h,
              child: customCommentSection(),
            ),
            GestureDetector(
              onTap: (){
                print('show all');
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: customText(
                  text: 'عرض الكل',
                  color: MyColors.meanColor,
                  fontSize: 14.sp,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundImage: NetworkImage(
                    "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                  ),
                ),
                Container(
                  width: 270.w,
                  child: CustomFromField(
                    hintText: 'اكتبي تعليقك',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0,),
          ],
        ),
      ),
    );
  }

  Widget customFamiliar() {
    return Container(
      height: 200.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 160.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 140.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          "https://image.freepik.com/free-vector/dark-paper-layers-wallpaper-with-golden-details_23-2148403401.jpg",
                        ),
                      ),
                    ),
                  ),
                  customText(
                    text: 'خطه العمل ودراسه الجدوي الماليه',
                    color: MyColors.black,
                    fontSize: 11.sp,
                  ),
                  customText(
                    text: '25 دقيقه',
                    color: MyColors.black,
                    fontSize: 11.sp,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget customCommentSection() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 100.h,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                      top: 8.0,
                    ),
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
                            customText(
                              text: 'فريد يمني',
                              color: MyColors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            customText(
                              text: 'اعمال رائده',
                              color: MyColors.black,
                              fontSize: 12.sp,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RatingBarIndicator(
                            rating: 4,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 16.0,
                            direction: Axis.horizontal,
                          ),
                        ),
                        Spacer(),
                        customText(
                          text: 'منذ 5 أيام',
                          color: MyColors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: 250.w,
                    child: customText(
                        text: 'كتير استفدت جدا رائع',
                        color: MyColors.black,
                        fontSize: 14.sp,
                        maxLines: 2),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black12,
            )
          ],
        );
      },
    );
  }
}
