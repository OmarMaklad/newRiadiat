import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/cubit_glabel/cubit_images.dart';
import 'package:riadiat/cubit_glabel/state_images.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

enum TypeHumans { female, male }
enum Country {saudiArabia, resident }

class PersonalDataEdit extends StatefulWidget {
  @override
  State<PersonalDataEdit> createState() => _PersonalDataEditState();
}

class _PersonalDataEditState extends State<PersonalDataEdit> {
  bool serviceProvider = false;
  bool socialNetwork = false;
  bool personalData = false;
  int personalDataInfo = 0;
  bool typeHuman = false;
  TypeHumans? typeHumans = TypeHumans.female;
  Country? country = Country.saudiArabia;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعديل البيانات الشخصيه',
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
              SizedBox(
                height: 5.0.h,
              ),
              Container(
                width: 330.w,
                height: 120.0.h,
                decoration: BoxDecoration(
                  color: MyColors.meanColor,
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0.h,
                    ),
                    CircularPercentIndicator(
                      lineWidth: 2.0.w,
                      radius: 45.r,
                      percent: 0.75,
                      progressColor: Colors.white,
                      center: CircleAvatar(
                        radius: 20.0.r,
                        backgroundImage: NetworkImage(
                          "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                        ),
                      ),
                    ),
                    Text(
                      'صفحتك مكتمله بنسبه  75%',
                      style: TextStyle(
                        fontSize: 18.0.sp,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'اكملى البيانات لتكونى جزء من الشبكه',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Container(
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey.withOpacity(0.02),
                ),
                child: ExpansionTile(
                  onExpansionChanged: (value) {
                    setState(() {
                      serviceProvider = value;
                    });
                  },
                  backgroundColor: Colors.white,
                  tilePadding: EdgeInsets.symmetric(
                    horizontal: 10.0.w,
                  ),
                  title: Text('مقدمه عنك'),
                  children: [
                    BlocConsumer<ImageCubit, ImagesStates>(
                      listener: (context, states) {},
                      builder: (context, states) {
                        var cubit = ImageCubit.get(context);
                        return Container(
                          width: 300.0.w,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 40.0.r,
                                backgroundImage: cubit.image != null
                                    ? FileImage(cubit.image!)
                                    : NetworkImage(
                                        "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                                      ) as ImageProvider,
                              ),
                              SizedBox(
                                width: 10.0.w,
                              ),
                              GestureDetector(
                                onTap: () {
                                  cubit.getImage(context);
                                },
                                child: Text(
                                  'تغير صورتك الشخصيه',
                                  style: TextStyle(
                                    fontSize: 15.0.sp,
                                    color: MyColors.meanColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        hintText: "علا مصطفى ",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        hintText: "رائد اعمال",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        hintText: "المعلومات الشخصيه ",
                        maxLine: 5,
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 4.0.h,
                    ),
                    Container(
                      width: 300.w,
                      child: Text("260/$personalDataInfo"),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey.withOpacity(0.02),
                ),
                child: ExpansionTile(
                  onExpansionChanged: (value) {
                    setState(() {
                      socialNetwork = value;
                    });
                  },
                  tilePadding: EdgeInsets.symmetric(
                    horizontal: 10.0.w,
                  ),
                  title: Text('مواقع التواصل'),
                  children: [
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        prefix: Icon(Icons.facebook_outlined),
                        hintText: "رايط فيس بوك الشخصى",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        prefix: Icon(MdiIcons.twitter),
                        hintText: "رابط تويتر الشخصى",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        prefix: Icon(MdiIcons.instagram),
                        hintText: "رابط انستجرام الشخصى",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        prefix: Icon(MdiIcons.linkedin),
                        hintText: "رابط لينكدان  الشخصى",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        prefix: Icon(
                          Icons.language_outlined,
                        ),
                        hintText: "رابط موقعك الشخصى",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey.withOpacity(0.02),
                ),
                child: ExpansionTile(
                  onExpansionChanged: (value) {
                    setState(() {
                      personalData = value;
                    });
                  },
                  tilePadding: EdgeInsets.symmetric(
                    horizontal: 10.0.w,
                  ),
                  title: Text('البيانات الشخصيه'),
                  children: [
                    Container(
                      width: 300.0.w,
                      child: Row(
                        children: [
                          Text(
                            'النوع',
                            style: TextStyle(
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 10.0.w,
                          ),
                          Container(
                            width: 60.w,
                            height: 25.h,
                            decoration: BoxDecoration(
                              color: typeHumans == TypeHumans.female
                                  ? Colors.black
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(5.0.r),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20.0.w,
                                  child: Radio<TypeHumans>(
                                      value: TypeHumans.female,
                                      groupValue: typeHumans,
                                      onChanged: (TypeHumans? value) {
                                        print(value);
                                        setState(() {
                                          typeHumans = value;
                                        });
                                      }),
                                ),
                                Text(
                                  'انثى',
                                  style: TextStyle(
                                    color: typeHumans == TypeHumans.female
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.0.w,
                          ),
                          Container(
                            width: 60.w,
                            height: 25.h,
                            decoration: BoxDecoration(
                              color: typeHumans == TypeHumans.male
                                  ? Colors.black
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(5.0.r),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20.0.w,
                                  child: Radio<TypeHumans>(
                                      value: TypeHumans.male,
                                      groupValue: typeHumans,
                                      onChanged: (TypeHumans? value) {
                                        print(value);
                                        setState(() {
                                          typeHumans = value;
                                        });
                                      }),
                                ),
                                Text(
                                  'ذكر',
                                  style: TextStyle(
                                    color: typeHumans == TypeHumans.male
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        hintText: "رقم الجوال",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        hintText: "المدينه",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        suffix: Icon(
                          Icons.arrow_drop_down_outlined,
                        ),
                        hintText: "سنه التخرج",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        hintText: "التخصص",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        suffix: Icon(
                          Icons.arrow_drop_down_outlined,
                        ),
                        hintText: "الدرجه العلميه",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        hintText: "الوظيفه",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        hintText: "سنين الخبره",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: Row(
                        children: [
                          Container(
                            width: 80.w,
                            height: 25.h,
                            decoration: BoxDecoration(
                              color: country == Country.saudiArabia
                                  ? Colors.black
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(5.0.r),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20.0.w,
                                  child: Radio<Country>(
                                      value: Country.saudiArabia,
                                      groupValue: country,
                                      onChanged: (Country? value) {
                                        print(value);
                                        setState(() {
                                          country = value;
                                        });
                                      }),
                                ),
                                Text(
                                  'سعوديه',
                                  style: TextStyle(
                                    color: country == Country.saudiArabia
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.0.w,
                          ),
                          Container(
                            width: 70.w,
                            height: 25.h,
                            decoration: BoxDecoration(
                              color: country == Country.resident
                                  ? Colors.black
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(5.0.r),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20.0.w,
                                  child: Radio<Country>(
                                      value: Country.resident,
                                      groupValue: country,
                                      onChanged: (Country? value) {
                                        print(value);
                                        setState(() {
                                          country = value;
                                        });
                                      }),
                                ),
                                Text(
                                  'مقيمه',
                                  style: TextStyle(
                                    color: country == Country.resident
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 300.0.w,
                      child: CustomFromField(
                        hintText: "رقم الاقامه",
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                  ],
                ),
              ),
              (serviceProvider == true ||
                      socialNetwork == true ||
                      personalData == true)
                  ? GestureDetector(
                      onTap: () {
                        print("saving");
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 50.0.h),
                        width: 150.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0.r),
                          color: MyColors.meanColor,
                        ),
                        child: Center(
                          child: Text(
                            'حفظ',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  : Container(),
              SizedBox(
                height: 30.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
