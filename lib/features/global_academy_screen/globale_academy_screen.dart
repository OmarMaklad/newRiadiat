import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

class GlobalAcademyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'الاكاديمه العامه',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: 20.0.w,
                top: 10.0.h,
                right: 15.0.w,
                left: 15.0.w,
              ),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 360 / 500,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: 9,
                  itemBuilder: (BuildContext context, index) {
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5.0.r),
                              topLeft: Radius.circular(5.0.r),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                            ),
                            child: Image(
                              fit: BoxFit.fill,
                              height: 200.h,
                              width: 360.0.w,
                              image: NetworkImage(
                                  'https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg'),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 30.h,
                            width: 360.w,
                            decoration: BoxDecoration(
                              color: MyColors.meanColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8.0.r),
                                topLeft: Radius.circular(8.0.r),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'المخاسبه الماليه',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
