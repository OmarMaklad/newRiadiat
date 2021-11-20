import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';
import 'package:riadiat/features/service_provider_screen/widget/cutom_bottom.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

class AddServiceScreen extends StatefulWidget {
  const AddServiceScreen({Key? key}) : super(key: key);

  @override
  _AddServiceScreenState createState() => _AddServiceScreenState();
}

class _AddServiceScreenState extends State<AddServiceScreen> {
  Map<String, dynamic>? checkBoxDate = {
    "تصميم واجهات": false,
    "تجميل": false,
    "كاتبه محتوي": false,
    "تصميم جرافيك": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.white,
        iconTheme: IconThemeData(
          color: MyColors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      width: 2,
                      color: MyColors.meanColor,
                    )),
                child: Icon(
                  Icons.add_circle_outline,
                  color: Colors.grey[400],
                  size: 50,
                ),
              ),
            ),
            customText(
              text: 'اضافه صوره',
              color: MyColors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _customAddBottom(
                  onTap: () {},
                  title: 'اضافه ملف',
                  icon: Icons.attach_file,
                ),
                _customAddBottom(
                  onTap: () {},
                  title: 'اضافه فيديو',
                  icon: Icons.video_collection,
                ),
                _customAddBottom(
                  onTap: () {},
                  title: 'اضافه رابط',
                  icon: Icons.link,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFromField(
              hintText: 'عنوان المشروع (اجباري)',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(
                    width: 1,
                    color: Colors.black26,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          customText(
                              text: 'صنف مشروعك (اجباري)',
                              color: MyColors.black,
                              fontSize: 16.sp),
                          Spacer(),
                          customText(
                              text: 'ضيفي تخصصك',
                              color: MyColors.meanColor,
                              fontSize: 14.sp),
                          Icon(
                            Icons.add_circle_outline,
                            color: MyColors.meanColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
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
                                      fillColor:
                                          MaterialStateProperty.all<Color>(
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
                                      fontSize: 11.0.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
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
                                      fillColor:
                                          MaterialStateProperty.all<Color>(
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
                                      fontSize: 11.0.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
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
                                      fillColor:
                                          MaterialStateProperty.all<Color>(
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
                                    fontSize: 11.0.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
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
                                      fillColor:
                                          MaterialStateProperty.all<Color>(
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
                                      fontSize: 11.0.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomFromField(
              hintText: 'عن المشروع (اختياري)',
              maxLine: 6,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customBottom(
                  backGroundColor: MyColors.meanColor,
                  textColor: MyColors.white,
                  onTap: () {},
                  text: 'تشر المشروع',
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
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget _customAddBottom({
    required String title,
    required Function onTap,
    required IconData icon,
  }) {
    return Container(
      height: 32.h,
      width: 102.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0.r),
          border: Border.all(width: 1.0, color: Colors.black12)),
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: MyColors.meanColor,
              ),
              customText(
                text: title,
                color: MyColors.black,
                fontSize: 13.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
