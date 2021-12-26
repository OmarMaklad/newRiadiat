import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/video_detail_screen/widgets/custom_video_player.dart';
import 'package:riadiat/features/widgets/custom_form_field_comment.dart';

class VideoDetailScreen extends StatefulWidget {
  const VideoDetailScreen({Key? key}) : super(key: key);

  @override
  State<VideoDetailScreen> createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 8.0.w),
            child: GestureDetector(
              onTap: () {
                print('arrowRight');
              },
              child: Icon(MdiIcons.arrowURightTopBold),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 1.sh,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomVideoPlayer(),
              SizedBox(
                height: 10.0.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                child: Container(
                  color: Theme.of(context).canvasColor,
                  child: TabBar(
                    // isScrollable: true,
                    controller: _tabController,
                    indicatorColor: MyColors.meanColor,
                    labelColor: MyColors.meanColor,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0.w),
                        child: Text(
                          'الدرس',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0.w),
                        child: Text('المرفقات'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0.w),
                        child: Text('التعليقات'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(),
                    Attachments(),
                    CommentVideo(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommentVideo extends StatefulWidget {
  const CommentVideo({Key? key}) : super(key: key);

  @override
  State<CommentVideo> createState() => _CommentVideoState();
}

class _CommentVideoState extends State<CommentVideo> {
  double rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              color: MyColors.dividerColor,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?size=626&ext=jpg&ga=GA1.2.1423500572.1621641600',
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          'فريده يمنى',
                          style: TextStyle(
                            fontSize: 14.0.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 10.0.w,
                        ),
                        RatingBar.builder(
                          initialRating: rating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 12.w,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: MyColors.starColor,
                          ),
                          onRatingUpdate: (rating) {
                            setState(() {
                              rating = rating;
                            });
                          },
                        ),
                      ],
                    ),
                    trailing: Text(
                      'منذ ايام 5',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black26,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      'اعمال رائده',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 60.w),
                      child: Text(
                        'كتير استفدات جدا رائع',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ],
              );
            },
          ),
          SizedBox(
            height: 20.0.w,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg'),
                ),
                CustomFromFieldComment(width: 280, hintText: "اكتبى تعليقك",),
              ],
            ),
          ),
          SizedBox(
            height: 20.0.w,
          ),
        ],
      ),
    );
  }
}


class Attachments extends StatelessWidget {
  const Attachments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.0.w),
            child: Text(
              'عن الدرس',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 20.0.w,
              left: 10.0.w,
            ),
            child: ExpandableText(
              ' الصّرف: هو الأسلوب المُرتبِط بالمُفردات؛ إذ يعتمد على نظام جذور الكلمات التي تكون ثلاثيّةً في الغالب، وقد تُصبح رباعيّةً في بعض الأحيان، كما تتميّز اللّغة العربيّة عن الكثير من اللّغات الأُخرى بوجود صيغٍ للكلمات الخاصّة بها، فمن المُمكن تحويل الكلمة المُفردة إلى مُثنّى، أو جمع، وغيرها من الطُّرق التي تستخدمها اللّغة العربيّة في تصنيف الكلمات.إقرأ المزيد على موضوع.كومالمُفردات: هي الكلمات التي تتكوّن منها اللّغة العربيّة، ويُصنَّف المعجم اللغويّ الخاص فيها بأنّه من أكثر المعاجم اللغويّة الغنيّة بالمفردات والتّراكيب؛ فيحتوي على أكثر من مليون كلمة. وتُعتبر المفردات الأصليّة في اللّغة العربيّة عبارةً عن جذور ثلاثيّة للكلمات الأُخرى، فينتج الجذر اللغويّ الواحد العديد من الكلمات والمُفرداتإقرأ المزيد على موضوع.كوم',
              expandText: 'اظهار المزيد',
              collapseText: 'اخفاء',
              maxLines: 6,
              linkColor: MyColors.meanColor,
            ),
          ),
          SizedBox(height: 6.w,),
          customContainerEmpty(),
          SizedBox(height: 6.w,),
          Padding(
            padding: EdgeInsets.only(right: 20.0.w),
            child: Text(
              'عن الدرس',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
              ),
            ),
          ),
          SizedBox(height: 6.w,),
          Padding(
            padding: EdgeInsets.only(right: 20.0.w),
            child: Text(
              'المرفقات',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


Widget customContainerEmpty() {
  return Container(
    width: double.infinity,
    height: 8.0,
    color: MyColors.dividerColor,
  );
}

