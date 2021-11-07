import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الاشعارات',
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15.0.w,
                      bottom: 10.0.h,
                    ),
                    child: Text(
                      'الجديد',
                      style: TextStyle(
                        fontSize: 15.0.sp,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0.h),
                    width: double.infinity,
                    color: MyColors.bgNotifications,
                    child: ListTile(
                      leading: Image(
                        width: 36.w,
                        height: 37.h,
                        image: AssetImage('assets/images/image_not1.png'),
                      ),
                      title: Text('اليوم استشاريه جلسه لديك '),
                      subtitle: Text('25دقيقه'),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: MyColors.bgNotifications,
                    child: ListTile(
                      leading: Image(
                        width: 36.w,
                        height: 37.h,
                        image: AssetImage('assets/images/image_not2.png'),
                      ),
                      title: Text('تم رافع مرفق جديد'),
                      subtitle: Text('25دقيقه'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.0.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15.0.w,
                      bottom: 10.0.h,
                    ),
                    child: Text(
                      'القديم',
                      style: TextStyle(
                        fontSize: 15.0.sp,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0.h),
                    width: double.infinity,
                    child: ListTile(
                      leading: Image(
                        width: 36.w,
                        height: 37.h,
                        image: AssetImage('assets/images/image_not1.png'),
                      ),
                      title: Text('اليوم استشاريه جلسه لديك '),
                      subtitle: Text('25دقيقه'),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: ListTile(
                      leading: Image(
                        width: 36.w,
                        height: 37.h,
                        image: AssetImage('assets/images/image_not2.png'),
                      ),
                      title: Text('تم رافع مرفق جديد'),
                      subtitle: Text('25دقيقه'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
