import 'dart:ui';

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ArticleDetailScreen extends StatefulWidget {
  const ArticleDetailScreen({Key? key}) : super(key: key);

  @override
  State<ArticleDetailScreen> createState() => _ArticleDetailScreenState();
}

class _ArticleDetailScreenState extends State<ArticleDetailScreen> {
  double rating = 3.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 8.0.w),
            child: GestureDetector(
              onTap: () {
                print('arrowRight');
              },
              child: Icon(MdiIcons.arrowURightTopBold),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/detail.jpeg',
                fit: BoxFit.fill,
                width: double.infinity,
                height: 205.0.h,
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Text(
                  'خطه العمل ودراسه الجدوى الماليه',
                  style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Text(
                  'نسرين السيد |يبدا من 1/4/2021',
                  style: TextStyle(
                    fontSize: 13.0.sp,
                    color: MyColors.bgDetailName,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(
                color: MyColors.dividerColor,
              ),
              customRowInfo(
                icon: MdiIcons.clockOutline,
                title: '5 ساعات',
                icon1: Icons.wysiwyg,
                title1: 'مكه',
              ),
              SizedBox(
                height: 10.0.h,
              ),
              customRowInfo(
                icon: MdiIcons.certificate,
                title: 'شهاده اتمام الدوره',
                icon1: Icons.chat,
                title1: 'غرفه محادثه مخصصه',
              ),
              Divider(
                color: MyColors.dividerColor,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0.w),
                child: Text(
                  'عن الدورة',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0.w,
                  left: 10.0.w,
                ),
                child: ExpandableText(
                  ' الصّرف: هو الأسلوب المُرتبِط بالمُفردات؛ إذ يعتمد على نظام جذور الكلمات التي تكون ثلاثيّةً في الغالب، وقد تُصبح رباعيّةً في بعض الأحيان، كما تتميّز اللّغة العربيّة عن الكثير من اللّغات الأُخرى بوجود صيغٍ للكلمات الخاصّة بها، فمن المُمكن تحويل الكلمة المُفردة إلى مُثنّى، أو جمع، وغيرها من الطُّرق التي تستخدمها اللّغة العربيّة في تصنيف الكلمات.إقرأ المزيد على موضوع.كومالمُفردات: هي الكلمات التي تتكوّن منها اللّغة العربيّة، ويُصنَّف المعجم اللغويّ الخاص فيها بأنّه من أكثر المعاجم اللغويّة الغنيّة بالمفردات والتّراكيب؛ فيحتوي على أكثر من مليون كلمة. وتُعتبر المفردات الأصليّة في اللّغة العربيّة عبارةً عن جذور ثلاثيّة للكلمات الأُخرى، فينتج الجذر اللغويّ الواحد العديد من الكلمات والمُفرداتإقرأ المزيد على موضوع.كوم',
                  expandText: 'اظهار المزيد',
                  collapseText: 'اخفاء',
                  maxLines: 6,
                  linkColor: MyColors.meanColor,
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              customContainerEmpty(),
              SizedBox(
                height: 6.0,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0.w),
                child: Text(
                  'الدرس(5)',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                     return Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         ListTile(
                           title: Text('${index + 1} مقدمه'),
                           trailing: Text('4 فبراير'),
                         ),
                         Padding(
                           padding:  EdgeInsets.only(right: 20.0.w),
                           child: Text('4:00 م'),
                         )
                       ],
                     );
              }),
              SizedBox(
                height: 10.0.h,
              ),
              customContainerEmpty(),
              SizedBox(
                height: 6.0,
              ),
              customContainerShowMap(),
              SizedBox(
                height: 10.0.h,
              ),
              customContainerEmpty(),
              SizedBox(
                height: 6.0,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0.w),
                child: Text(
                  'المراجعات(455)',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0.w),
                child: Text(
                  '4.0',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 26.0.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Padding(
                padding: EdgeInsets.only(right: 6.0.w),
                child: RatingBar.builder(
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25.w,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: MyColors.starColor,
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      rating = rating;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0.w),
                child: ListView.builder(
                    reverse: true,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      int data = index + 1;
                      return Row(
                        children: [
                          Text(
                            '$data نجوم ',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 8.0.w,
                          ),
                          RatingBarIndicator(
                            rating: 2,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 35.w,
                            itemBuilder: (context, _) => Container(
                              height: 20,
                              width: 100.w,
                              color: MyColors.starColor,
                            ),
                          ),
                          SizedBox(
                            width: 8.0.w,
                          ),
                          Text("(15)"),
                        ],
                      );
                    }),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?size=626&ext=jpg&ga=GA1.2.1423500572.1621641600',
                          ),
                        ),
                        title: Row(
                          children: [
                            Text(
                              'فريده يمنى',
                              style: TextStyle(
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 10.0.w,
                            ),
                            RatingBar.builder(
                              initialRating: rating,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 12.w,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: MyColors.starColor,
                              ),
                              onRatingUpdate: (rating) {
                                setState(() {
                                  rating = rating;
                                });
                              },
                            ),
                          ],
                        ),
                        trailing: Text(
                          'منذ ايام 5',
                          style: TextStyle(
                            fontSize: 14.0.sp,
                            color: Colors.black26,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          'اعمال رائده',
                          style: TextStyle(
                            fontSize: 14.0.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 60.w),
                          child: Text(
                            'كتير استفدات جدا رائع',
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    ],
                  );
                },
              ),
              SizedBox(
                height: 10.0.h,
              ),
              customContainerEmpty(),
              SizedBox(
                height: 6.0,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0.w),
                child: Text(
                  'المدربه',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?size=626&ext=jpg&ga=GA1.2.1423500572.1621641600',
                  ),
                ),
                title: Text(
                  'فريده يمنى',
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Text(
                  'منذ ايام 5',
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: Colors.black26,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                  'اعمال رائده',
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0.w, left: 20.0.w),
                child: Text(
                  ' الصّرف: هو الأسلوب المُرتبِط بالمُفردات؛ إذ يعتمد على نظام جذور الكلمات التي تكون ثلاثيّةً في الغالب، وقد تُصبح رباعيّةً في بعض الأحيان، كما تتميّز اللّغة العربيّة عن الكثير من اللّغات الأُخرى بوجود صيغٍ للكلمات الخاصّة بها، فمن المُمكن تحويل الكلمة المُفردة إلى مُثنّى، أو جمع، وغيرها من الطُّرق التي تستخدمها اللّغة العربيّة في تصنيف الكلمات',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 150.w,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: MyColors.meanColor,
                        borderRadius: BorderRadius.circular(5.0.r),
                      ),
                      child: Center(
                        child: Text(
                          'اشترى الان',
                          style: TextStyle(
                            fontSize: 14.0.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0.w,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 150.w,
                      height: 40.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.meanColor),
                        borderRadius: BorderRadius.circular(5.0.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            MdiIcons.heartOutline,
                            color: MyColors.meanColor,
                          ),
                          SizedBox(width: 6.0.w,),
                          Text(
                            'حفظ فى المفضله',
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              color: MyColors.meanColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customRowInfo({
    String? title,
    String? title1,
    IconData? icon,
    IconData? icon1,
  }) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0.w),
      child: Row(
        children: [
          Row(
            children: [
              Icon(
                icon!,
                color: MyColors.meanColor,
              ),
              SizedBox(
                width: 5.0.w,
              ),
              Text(
                title!,
                style: TextStyle(
                  fontSize: 14.0.sp,
                  color: MyColors.bgDetailName,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 50.0.w,
          ),
          Row(
            children: [
              Icon(
                icon1!,
                color: MyColors.meanColor,
              ),
              SizedBox(
                width: 5.0.w,
              ),
              Text(
                title1!,
                style: TextStyle(
                  fontSize: 14.0.sp,
                  color: MyColors.bgDetailName,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget customContainerEmpty() {
    return Container(
      width: double.infinity,
      height: 8.0,
      color: MyColors.dividerColor,
    );
  }

  Widget customContainerShowMap() {
    return GestureDetector(
      onTap: () {
        print('show all');
      },
      child: ListTile(
        dense: true,
        contentPadding:
            EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 20.0.w),
        leading: Icon(
          Icons.wysiwyg,
          color: MyColors.meanColor,
          size: 30.0,
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 5.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'مكه',
                style: TextStyle(
                  fontSize: 16.sp,
                  height: 0.6,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'شارع الملك بن سلمان',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        trailing: Container(
          width: 150.0.w,
          height: 40.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0.r),
            color: MyColors.meanColor,
          ),
          child: Center(
            child: Text(
              'عرض على الخريطه',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
