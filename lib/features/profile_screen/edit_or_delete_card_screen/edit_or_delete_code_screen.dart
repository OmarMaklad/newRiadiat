import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/features/widgets/custom_large_button.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

class EditOrDeleteCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعديل اوحذف البطاقه',
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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 600.0.h,
          child: Padding(
            padding: EdgeInsets.only(right: 20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0.h,
                ),
                Text(
                  'اكتبى رمز الحمايه الخاص  بالبطاقه',
                  style: TextStyle(
                    fontSize: 15.0.sp,
                    color: Colors.black26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                CustomFromField(
                  hintText: "رمز الحمايه",
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                Text(
                  '3او4ارقام',
                  style: TextStyle(
                    color: Colors.black26,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: customLargeButton(name: "تاكيد", onTap: (){
                      print('confirm');
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
