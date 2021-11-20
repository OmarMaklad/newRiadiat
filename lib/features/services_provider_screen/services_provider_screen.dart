import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/widgets/custom_large_button.dart';

class ServiceProviderScreen extends StatefulWidget {
  const ServiceProviderScreen({Key? key}) : super(key: key);

  @override
  State<ServiceProviderScreen> createState() => _ServiceProviderScreenState();
}

class _ServiceProviderScreenState extends State<ServiceProviderScreen> {
  bool? isCheckedGlobal = false;
  bool? isCheckedPrivate = false;
  bool? isFashionGlobal = false;
  bool? isFashionPrivate = false;
  bool? isJewelryGlobal = false;
  bool? isJewelryPrivate = false;
  bool? isInteriorDesignGlobal = false;
  bool? isInteriorDesignPrivate = false;
  bool? isTechnologyGlobal = false;
  bool? isTechnologyPrivate = false;
  bool? isECommerceGlobal = false;
  bool? isECommercePrivate = false;
  bool? isRegisterCourse = false;
  bool? isEducationCourse = false;
  bool? isPaid = false;
  bool? isFreely = false;
  bool? isOnline = false;
  bool? isOutSide = false;
  bool? makka = false;
  bool? isRiyadh = false;
  bool? isGadh = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'تصفيه النتائج',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isCheckedGlobal = false;
                  isCheckedPrivate = false;
                  isFashionGlobal = false;
                  isFashionPrivate = false;
                  isJewelryGlobal = false;
                  isJewelryPrivate = false;
                  isInteriorDesignGlobal = false;
                  isInteriorDesignPrivate = false;
                  isTechnologyGlobal = false;
                  isTechnologyPrivate = false;
                  isECommerceGlobal = false;
                  isECommercePrivate = false;
                  isRegisterCourse = false;
                  isEducationCourse = false;
                  isPaid = false;
                  isFreely = false;
                  isOnline = false;
                  isOutSide = false;
                  makka = false;
                  isRiyadh = false;
                  isGadh = false;
                });
              },
              child: Text(
                'الغاء تصفيه النتائج',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 600.0.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpansionTile(
                tilePadding: EdgeInsets.only(
                  right: 20.0.w,
                  left: 40.0.w,
                ),
                childrenPadding: EdgeInsets.only(
                  right: 40.0.w,
                  bottom: 10.0.h,
                ),
                title: Row(
                  children: [
                    SizedBox(
                      width: 30.0,
                      child: Checkbox(
                          activeColor: MyColors.meanColor,
                          value: isCheckedGlobal,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedGlobal = value;
                            });
                          }),
                    ),
                    Text(
                      'اكاديميه عامه',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0.w,
                        height: 25.0.h,
                        child: Checkbox(
                            activeColor: MyColors.meanColor,
                            value: isFashionGlobal,
                            onChanged: (bool? value) {
                              setState(() {
                                isFashionGlobal = value;
                              });
                            }),
                      ),
                      Text(
                        'ازياء',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0.w,
                        height: 25.0.h,
                        child: Checkbox(
                            activeColor: MyColors.meanColor,
                            value: isJewelryGlobal,
                            onChanged: (bool? value) {
                              setState(() {
                                isJewelryGlobal = value;
                              });
                            }),
                      ),
                      Text(
                        'المجوهرات',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0.w,
                        height: 25.0.h,
                        child: Checkbox(
                            activeColor: MyColors.meanColor,
                            value: isInteriorDesignGlobal,
                            onChanged: (bool? value) {
                              setState(() {
                                isInteriorDesignGlobal = value;
                              });
                            }),
                      ),
                      Text(
                        'التصميم الداخلى',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0.w,
                        height: 25.0.h,
                        child: Checkbox(
                            activeColor: MyColors.meanColor,
                            value: isTechnologyGlobal,
                            onChanged: (bool? value) {
                              setState(() {
                                isTechnologyGlobal = value;
                              });
                            }),
                      ),
                      Text(
                        'التقنيه',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0.w,
                        height: 25.0.h,
                        child: Checkbox(
                            activeColor: MyColors.meanColor,
                            value: isECommerceGlobal,
                            onChanged: (bool? value) {
                              setState(() {
                                isECommerceGlobal = value;
                              });
                            }),
                      ),
                      Text(
                        'التجاره الالكترونيه',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                tilePadding: EdgeInsets.only(
                  right: 20.0.w,
                  left: 40.0.w,
                ),
                childrenPadding: EdgeInsets.only(
                  right: 40.0.w,
                  bottom: 10.0.h,
                ),
                title: Row(
                  children: [
                    SizedBox(
                      width: 30.0,
                      child: Checkbox(
                          activeColor: MyColors.meanColor,
                          value: isCheckedPrivate,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedPrivate = value;
                            });
                          }),
                    ),
                    Text(
                      'اكاديميه متخصصه',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0.w,
                        height: 25.0.h,
                        child: Checkbox(
                            activeColor: MyColors.meanColor,
                            value: isFashionPrivate,
                            onChanged: (bool? value) {
                              setState(() {
                                isFashionPrivate = value;
                              });
                            }),
                      ),
                      Text(
                        'ازياء',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0.w,
                        height: 25.0.h,
                        child: Checkbox(
                            activeColor: MyColors.meanColor,
                            value: isJewelryPrivate,
                            onChanged: (bool? value) {
                              setState(() {
                                isJewelryPrivate = value;
                              });
                            }),
                      ),
                      Text(
                        'المجوهرات',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0.w,
                        height: 25.0.h,
                        child: Checkbox(
                            activeColor: MyColors.meanColor,
                            value: isInteriorDesignPrivate,
                            onChanged: (bool? value) {
                              setState(() {
                                isInteriorDesignPrivate = value;
                              });
                            }),
                      ),
                      Text(
                        'التصميم الداخلى',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0.w,
                        height: 25.0.h,
                        child: Checkbox(
                            activeColor: MyColors.meanColor,
                            value: isTechnologyPrivate,
                            onChanged: (bool? value) {
                              setState(() {
                                isTechnologyPrivate = value;
                              });
                            }),
                      ),
                      Text(
                        'التقنيه',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0.w,
                        height: 25.0.h,
                        child: Checkbox(
                            activeColor: MyColors.meanColor,
                            value: isECommercePrivate,
                            onChanged: (bool? value) {
                              setState(() {
                                isECommercePrivate = value;
                              });
                            }),
                      ),
                      Text(
                        'التجاره الالكترونيه',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 26.0.w,
                ),
                child: Text(
                  'النوع',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.0.w,
                      height: 25.0.h,
                      child: Checkbox(
                          activeColor: MyColors.meanColor,
                          value: isRegisterCourse,
                          onChanged: (bool? value) {
                            setState(() {
                              isRegisterCourse = value;
                            });
                          }),
                    ),
                    Text(
                      'دوره مسجله',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.0.w,
                      height: 25.0.h,
                      child: Checkbox(
                          activeColor: MyColors.meanColor,
                          value: isEducationCourse,
                          onChanged: (bool? value) {
                            setState(() {
                              isEducationCourse = value;
                            });
                          }),
                    ),
                    Text(
                      'دورة تعليميه',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 26.0.w,
                ),
                child: Text(
                  'السعر',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 6.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.0.w,
                      height: 25.0.h,
                      child: Checkbox(
                          activeColor: MyColors.meanColor,
                          value: isPaid,
                          onChanged: (bool? value) {
                            setState(() {
                              isPaid = value;
                            });
                          }),
                    ),
                    Text(
                      'مدفوع',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.0.w,
                      height: 25.0.h,
                      child: Checkbox(
                          activeColor: MyColors.meanColor,
                          value: isFreely,
                          onChanged: (bool? value) {
                            setState(() {
                              isFreely = value;
                            });
                          }),
                    ),
                    Text(
                      'مجاني',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 26.0.w,
                ),
                child: Text(
                  'المكان',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 6.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.0.w,
                      height: 25.0.h,
                      child: Checkbox(
                          activeColor: MyColors.meanColor,
                          value: isOnline,
                          onChanged: (bool? value) {
                            setState(() {
                              isOnline = value;
                            });
                          }),
                    ),
                    Text(
                      'اونلاين',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.0.w,
                      height: 25.0.h,
                      child: Checkbox(
                          activeColor: MyColors.meanColor,
                          value: isOutSide,
                          onChanged: (bool? value) {
                            setState(() {
                              isOutSide = value;
                            });
                          }),
                    ),
                    Text(
                      'خارج المقر',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 40.0.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.0.w,
                      height: 25.0.h,
                      child: Checkbox(
                          activeColor: MyColors.meanColor,
                          value: makka,
                          onChanged: (bool? value) {
                            setState(() {
                              makka = value;
                            });
                          }),
                    ),
                    Text(
                      'مكه',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 40.0.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.0.w,
                      height: 25.0.h,
                      child: Checkbox(
                          activeColor: MyColors.meanColor,
                          value: isRiyadh,
                          onChanged: (bool? value) {
                            setState(() {
                              isRiyadh = value;
                            });
                          }),
                    ),
                    Text(
                      'الرياض',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 40.0.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.0.w,
                      height: 25.0.h,
                      child: Checkbox(
                          activeColor: MyColors.meanColor,
                          value: isGadh,
                          onChanged: (bool? value) {
                            setState(() {
                              isGadh = value;
                            });
                          }),
                    ),
                    Text(
                      'جده',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: customLargeButton(
                      name: 'حفظ التعييرات',
                      onTap: () {
                        print('save changing');
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
