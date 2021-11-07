import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/features/widgets/custom_large_button.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

class ChangeEmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'تغير البريد الالكترونى',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0.h,
                  ),
                  CustomFromField(
                    hintText: "بريدك الالكترونى الجديد",
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  CustomFromField(
                    hintText: "بريدك الالكترونى الجديد",
                  ),
                  SizedBox(
                    height: 8.0.h,
                  ),
                  Text('لامانك سيتم حذف جميع بطاقات الدفع عند التغير'),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: customLargeButton(
                    onTap: () {
                      print('working');
                    },
                    name: "حفظ",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
