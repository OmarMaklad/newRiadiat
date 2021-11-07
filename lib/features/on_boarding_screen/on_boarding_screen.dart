import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';
import 'package:riadiat/features/on_boarding_screen/modals/onBoard_modals.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  PageController? _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.0.w,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        print('skip');
                      },
                      child: Text(
                        'تخطى',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                          color: MyColors.meanColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Container(
                  height: 450.0.h,
                  child: PageView.builder(
                    pageSnapping: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: onBoardingList.length,
                    physics: BouncingScrollPhysics(),
                    controller: _controller,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (BuildContext? context, index) {
                      return Column(
                        children: [
                          Image(
                            width: double.infinity,
                            height: 200.0.h,
                            image: AssetImage(onBoardingList[index].image!),
                          ),
                          SizedBox(
                            height: 130.0.h,
                          ),
                          Text(
                            onBoardingList[index].title!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0.sp,
                            ),
                          ),
                          Text(
                            onBoardingList[index].description!,
                            style: TextStyle(
                              fontSize: 15.0.sp,
                              color: Colors.black26,
                              height: 1.0,
                            ),
                          ),
                          Text(
                            onBoardingList[index].description1!,
                            style: TextStyle(
                              fontSize: 15.0.sp,
                              color: Colors.black26,
                              height: 1.0,
                            ),
                          ),
                          Text(
                            onBoardingList[index].description2!,
                            style: TextStyle(
                              fontSize: 15.0.sp,
                              color: Colors.black26,
                              height: 1.0,
                            ),
                          ),
                          Text(
                            onBoardingList[index].description3!,
                            style: TextStyle(
                              fontSize: 15.0.sp,
                              height: 1.0,
                              color: Colors.black26,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40.0.h,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (currentIndex < 3) {
                        currentIndex = currentIndex + 1;
                        // _controller!.nextPage(duration: Duration(milliseconds: 200), curve: Curves.ease);
                        _controller!.animateToPage(currentIndex, duration: Duration(milliseconds: 200), curve: Curves.ease);
                      } else{
                        Navigator.pushNamed(context, loginScreen);
                      }
                    });
                  },
                  child: Container(
                    width: 150.0.w,
                    height: 40.0.h,
                    decoration: BoxDecoration(
                      color: MyColors.meanColor,
                      borderRadius: BorderRadius.circular(5.0.r),
                    ),
                    child: Center(
                      child: Text(
                     currentIndex == 3  ?  "ابداى" : 'التالى',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onBoardingList.length,
                    (index) =>
                        customDotIndicator(context: context, index: index),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customDotIndicator({BuildContext? context, int? index}) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 200,
      ),
      margin: EdgeInsets.only(right: 5),
      width: 6.0.w,
      height: 6.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
        color:
            currentIndex == index ? MyColors.meanColor : MyColors.dotIndicator,
      ),
    );
  }
}
