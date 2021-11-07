import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
            child: Container(),
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
                  onTap: (){
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
