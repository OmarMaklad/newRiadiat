import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrainingSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0.h),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage: NetworkImage(
                        "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                      ),
                      radius: 30,
                    ),
                    title: Text('نهال احمد '),
                    subtitle: Text('رائده اعمال فى مجال تصميم الازياء'),
                  ),
                ),
                SizedBox(
                  height: 2.0.h,
                ),
                Container(
                  height: 1.0.h,
                  color: Colors.grey.withOpacity(0.1),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
