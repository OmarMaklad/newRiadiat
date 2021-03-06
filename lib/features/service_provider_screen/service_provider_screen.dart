import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_famous_services_item.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_how_to_work.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_service_company.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_service_presenters.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_some_offers_item.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';
import 'package:riadiat/features/service_provider_screen/widget/cutom_bottom.dart';
import 'package:riadiat/features/widgets/custom_search_header.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';
import 'package:riadiat/features/widgets/custom_title_row.dart';

class ServiceProviderScreen extends StatelessWidget {
  const ServiceProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
            width: 200.0.w,
            height: 35.0.h,
            image: AssetImage('assets/images/logo.png')),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              searchingHeader(
                context: context,
                onTapRight: () {
                  Navigator.pushNamed(context, notificationScreen);
                },
                iconsRight: Icon(
                  MdiIcons.bellOutline,
                  size: 30,
                ),
                hintText: "?????????? ???? ?????????? ????????",
                onChange: (value) {
                  print(value);
                },
                onPressed: () {
                  Navigator.pushNamed(context, searchScreen);
                },
                onTapLeft: () {
                  print('go to training');
                },
                iconLeft: Icon(
                  Icons.add_box,
                  size: 30,
                  color: MyColors.borderInputColor,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Stack(
                alignment: Alignment.bottomCenter * 0.5.h,
                children: [
                  Container(
                    height: 170.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://image.freepik.com/free-vector/dark-paper-layers-wallpaper-with-golden-details_23-2148403401.jpg'))),
                  ),
                  Column(
                    children: [
                      customText(
                        text: '???????? ???????????? ???? ???? ?????????? ??????????????',
                        color: Colors.white,
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      customText(
                        text:
                            '???????????? ???????????? ?????????????? ?????????????? ???? ?????????? ?????????????? ??????????????',
                        color: MyColors.borderInputColor,
                        fontSize: 12.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customBottom(
                              backGroundColor: MyColors.meanColor,
                              textColor: MyColors.white,
                              text: '?????????? ????????',
                              //navigate to Add service screen
                              onTap: () {
                                Navigator.pushNamed(context, addServiceScreen);
                              }),
                          SizedBox(
                            width: 15.w,
                          ),
                          customBottom(
                              backGroundColor: Colors.transparent,
                              textColor: MyColors.white,
                              text: '???????? ????????????????',
                              onTap: () {
                                Navigator.pushNamed(
                                    context, browseProjectsScreen);
                              }),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              titleRow(
                title: "???????? ?????????????? ???? ??????????????",
                showAll: "?????? ????????",
                onTap: () {
                  Navigator.pushNamed(context, allServicesScreen);
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              //???????? ?????????????? ???? ??????????????
              Container(
                height: 240.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return customFamousServicesListItem(
                        width: 170.w,
                        height: 240.h,
                        imagePath:
                            'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                        title: '?????????????? ????????????????');
                  },
                ),
              ),
              //???????????? ???? ?????????? ??????????
              Container(
                height: 220.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(15.w),
                      child: Container(
                        height: 200.h,
                        width: 200.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.volunteer_activism_outlined,
                                    size: 30,
                                    color: MyColors.meanColor,
                                  ),
                                  customText(
                                    fontSize: 14.sp,
                                    color: MyColors.black,
                                    text: '???????????? ???? ?????????? ??????????',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              customText(
                                text: ' ?????????? ???????????? ???? ???????? ????????????\n'
                                    '?????????? ???????????? ???? ???????? ????????????\n'
                                    '?????????? ???????????? ???? ???????? ????????????',
                                color: MyColors.textName,
                                fontSize: 14.sp,
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              customBottom(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, serviceSubscriptionScreen);
                                },
                                text: '???????????? ????????',
                                textColor: MyColors.white,
                                backGroundColor: MyColors.meanColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              titleRow(
                title: "???????????? ??????????????",
                showAll: "?????? ????????",
                onTap: () {
                  Navigator.pushNamed(context, allServicesProviderScreen);
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              //???????????? ??????????????
              Container(
                height: 160.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return customServicePresenter(
                        onTap: () => Navigator.pushNamed(
                            context, serviceProviderProfileScreen),
                        name: '???????? ????????',
                        title: '?????????? ?????????? ?? ???????? \n   ?????????? ??????????????');
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              titleRow(
                title: "?????????? ?????????? ??????????????",
                showAll: "?????? ????????",
                onTap: () {},
              ),
              //?????????? ?????????? ??????????????
              Container(
                height: 160.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return customServiceCompanyItem(context: context);
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              titleRow(
                title: "?????? ????????",
                showAll: "",
                onTap: () {},
              ),
              //?????? ????????
              Container(
                height: 250.h,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 200 / 140,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return customHowToWorkItem(
                      index: index,
                    );
                  },
                ),
              ),
              titleRow(
                title: "?????? ???????????? ???? ???????? ??????????????",
                showAll: "?????? ????????",
                onTap: () {},
              ),
              //?????? ???????????? ???? ???????? ??????????????
              Container(
                height: 240.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return customSomeOffersItem(context: context);
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              titleRow(
                title: "?????? ?????? ???????? ???? ?????????? ?????? ?????????? ???????????????? ??????",
                showAll: "",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              CustomFromField(
                hintText: '??????????',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomFromField(
                hintText: '???????????? ????????????????????',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomFromField(
                hintText: '?????????? ??????????',
                maxLine: 5,
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
