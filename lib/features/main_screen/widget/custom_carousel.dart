import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarousel extends StatefulWidget {
  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  List<String> images = [
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160.h,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          // print("this is images ${images[index]} and this is index $index");
          return Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        indicatorLayout: PageIndicatorLayout.SCALE,
        autoplay: true,
        onTap: (index) {
          print(index);
        },
        autoplayDelay: 2000,
        itemCount: images.length,
        pagination: new SwiperPagination(),
        fade: 1.0,
        viewportFraction: 0.85,
      ),
    );
  }
}
