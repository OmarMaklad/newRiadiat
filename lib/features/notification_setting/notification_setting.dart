import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/widgets/custom_large_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationSetting extends StatefulWidget {
  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  Map<String, dynamic>? checkBoxDate = {
    "اشعارات الدورات": false,
    "اشعارات الورش واللقاءات": false,
    "اشعارات المرفقات": false,
    "اشعارات المدونه": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'اعدادات الاشعارات',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: checkBoxDate!.keys.map((e) {
                print(checkBoxDate![e]);
                return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: MyColors.meanColor,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15.0.w),
                    title: Text(
                      e,
                      style: TextStyle(
                          fontSize: 15.0.sp, fontWeight: FontWeight.bold),
                    ),
                    value: checkBoxDate![e],
                    onChanged: (value) {
                      setState(() {
                        checkBoxDate![e] = value;
                      });
                    });
              }).toList(),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: customLargeButton(
                    context: context,
                    name: "حفظ",
                    onTap: () {
                      print('saving data');
                    }),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
