import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

class DownloadScreen extends StatefulWidget {
  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  bool downloadSwitching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'التحميلات',
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
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'تحميل من خلال wi-fi فقط ',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Transform.scale(
                      scale: 0.6,
                      child: CupertinoSwitch(
                        value: downloadSwitching,
                        activeColor: MyColors.meanColor,
                        onChanged: (value) {
                          setState(() {
                            downloadSwitching = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Container(
                width: double.infinity,
                height: 10.0.h,
                color: Colors.grey.withOpacity(0.1),
              ),
              SizedBox(
                height: 30.0.h,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 20.0.h),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 320.0.w,
                                height: 110.h,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5.0.r),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0..r),
                                  child: Image(
                                      width: 320.0.w,
                                      height: 110.0.h,
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                                      )),
                                ),
                              ),
                              Positioned(
                                top: 40.0.h,
                                right: 150.0.w,
                                child: Icon(
                                  Icons.play_circle_outline,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'خطه العمل ودراسه الجدوى الماليه',
                            style: TextStyle(
                              fontSize: 17.0.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'علا مصطفى',
                            style: TextStyle(
                              color: Colors.black26,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
