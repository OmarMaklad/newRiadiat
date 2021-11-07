import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';

enum MainRadio { mainVisa, mainMaster }

class PaymentCardScreen extends StatefulWidget {
  @override
  State<PaymentCardScreen> createState() => _PaymentCardScreenState();
}

class _PaymentCardScreenState extends State<PaymentCardScreen> {
  MainRadio? mainRadio = MainRadio.mainVisa;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'بطاقات الدافع',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0.r),
                  child: Image(
                    width: 30.0.w,
                    height: 20.0.h,
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://i.pinimg.com/280x280_RS/06/a5/4e/06a54e9dca0956825ed00d793231bb46.jpg'),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'البطاقه المنتهيه ب4512 ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 23.0.w,
                          child: Radio<MainRadio>(
                              activeColor: MyColors.meanColor,
                              value: MainRadio.mainVisa,
                              groupValue: mainRadio,
                              onChanged: (MainRadio? value) {
                                setState(() {
                                  mainRadio = value;
                                });
                              }),
                        ),
                        Text('رئيسى')
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0.r),
                  child: Image(
                    width: 30.0.w,
                    height: 20.0.h,
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://pbs.twimg.com/profile_images/753764362079334401/k_Hji2Hf_400x400.jpg'),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'البطاقه المنتهيه ب4512 ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 23.0.w,
                          child: Radio<MainRadio>(
                              activeColor: MyColors.meanColor,
                              value: MainRadio.mainMaster,
                              groupValue: mainRadio,
                              onChanged: (MainRadio? value) {
                                setState(() {
                                  mainRadio = value;
                                });
                              }),
                        ),
                        Text('رئيسى')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0.h,),
              Padding(
                padding:  EdgeInsets.only(right: 20.0.w),
                child: GestureDetector(
                  onTap: () {
                   Navigator.pushNamed(context, addingNewCardScreen);
                  },
                  child: Text(
                    '+اضافه بطاقه جديده',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0.sp,
                      color: MyColors.meanColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
