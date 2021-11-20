import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_famous_services_item.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';

class AllServicesScreen extends StatelessWidget {
  const AllServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            customText(color: MyColors.black, text: 'خدماتنا', fontSize: 15.sp),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: MyColors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {
              print('search our Services');
            },
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.white,
        elevation: 10,
        onPressed: () {},
        child: Icon(
          Icons.filter_alt,
          color: MyColors.meanColor,
          size: 35,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            childAspectRatio: 5/6,
              mainAxisSpacing: 16),
          scrollDirection: Axis.vertical,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4.r),
                        topLeft: Radius.circular(4.r),
                      ),
                    ),
                    width: 100.w,
                    height: 200.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.r),
                        topLeft: Radius.circular(6.r),
                      ),
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage('https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: MyColors.meanColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6.r),
                          topLeft: Radius.circular(6.r),
                        ),
                      ),
                      width: 100.w,
                      height: 35.h,
                      child: Center(
                        child: customText(
                          text: 'مستقلين الخياطات',
                          color: MyColors.white,
                          fontSize: 10.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
