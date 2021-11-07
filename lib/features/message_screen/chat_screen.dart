import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riadiat/constants/my_color.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'علا مصطفى',
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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
              child: ListView.separated(
                  itemBuilder: (context, index){
                  return Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0.r),
                            color: MyColors.seeAllColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.0.w,
                              vertical: 8.0.h,
                            ),
                            child: Text("hi i'm ahmed zaki"),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0.h,),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0.r),
                            color: MyColors.bgNotifications,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.0.w,
                              vertical: 8.0.h,
                            ),
                            child: Text("hi i'm ahmed zaki"),
                          ),
                        ),
                      ),
                    ],
                  );
              }, separatorBuilder: (context, index) {
                    return SizedBox(height: 10.0.h,);
              }, itemCount: 10),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 10.0.w,
              right: 10.0.w,
              left: 10.0.w,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10.0.h,
                  horizontal: 10.0.w,
                ),
                border: OutlineInputBorder(),
                suffix: GestureDetector(
                  onTap: () {
                    print('click');
                  },
                  child: Icon(MdiIcons.send),
                ),
                hintText: 'ارسلى رساله',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
