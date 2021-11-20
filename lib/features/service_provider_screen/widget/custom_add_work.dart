import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

import 'custom_text.dart';
import 'cutom_bottom.dart';

class CustomAddWork extends StatefulWidget {
  const CustomAddWork({Key? key}) : super(key: key);

  @override
  _CustomAddWorkState createState() => _CustomAddWorkState();
}

class _CustomAddWorkState extends State<CustomAddWork> {
  Map<String, dynamic>? checkBoxDate = {
    "اونلاين": false,
    "خارج المقر": false,
    "داخل المقر": false,
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomFromField(
            hintText: 'عنوان المشروع (اجباري)',
            validation: 'يجب ادخال عنوان المشروع',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFromField(
            hintText: 'عن المشروع (اختياري)',
            maxLine: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFromField(
            hintText: 'المهارات المطلوبه',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFromField(
            hintText: 'مده التسليم',
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 320.w,
            decoration:
                BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
            child: ExpansionTile(
              onExpansionChanged: (value) {},
              tilePadding: EdgeInsets.symmetric(
                horizontal: 10.0.w,
              ),
              title: Text('المبلغ المتوقع'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Icon(
                  Icons.cloud_upload_rounded,
                  color: Colors.grey,
                  size: 50,
                ),
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.grey[200],
                ),
              ),
              customText(
                text: 'اضافه ملف لوصف حاله المشروع (اختياري)',
                color: MyColors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: customText(
                text: 'حاله طلب الخدمه',
                color: MyColors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 280.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: checkBoxDate!.keys.map((e) {
                  print(checkBoxDate![e]);
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: 15.w,
                          height: 15.h,
                          child: Checkbox(
                              fillColor: MaterialStateProperty.all<Color>(
                                  MyColors.meanColor),
                              activeColor: MyColors.meanColor,
                              value: checkBoxDate![e],
                              onChanged: (value) {
                                setState(() {
                                  checkBoxDate![e] = value;
                                });
                              }),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          e,
                          style: TextStyle(
                              fontSize: 11.0.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customBottom(
                  backGroundColor: MyColors.meanColor,
                  textColor: MyColors.white,
                  onTap: () {},
                  text: 'نشر المشروع',
                ),
                const SizedBox(
                  width: 10,
                ),
                customBottom(
                  backGroundColor: MyColors.white,
                  textColor: MyColors.meanColor,
                  onTap: () {},
                  text: 'حفظ التغييرات',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
