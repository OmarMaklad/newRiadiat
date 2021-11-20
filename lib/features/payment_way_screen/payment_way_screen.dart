import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/payment_way_screen/widget/custom_container_payment.dart';
import 'package:riadiat/features/widgets/custom_large_button.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

enum PaymentWay { PayWay, Epay, Stc, ExpireCart }

class PaymentWayScreen extends StatefulWidget {
  PaymentWayScreen({Key? key}) : super(key: key);

  @override
  State<PaymentWayScreen> createState() => _PaymentWayScreenState();
}

class _PaymentWayScreenState extends State<PaymentWayScreen> {
  PaymentWay? paymentWay = PaymentWay.PayWay;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'طريقه الدفع',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 630.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0.w,
                ),
                child: RichText(
                  text: TextSpan(
                      text: 'اشتراك شهرى',
                      style: TextStyle(
                        fontSize: 16.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: '400',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22.0.sp,
                          ),
                        ),
                        TextSpan(
                          text: 'ريال',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0.sp,
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0.w,
                ),
                child: Row(
                  children: [
                    customContainerPayment(
                      radio: Radio<PaymentWay>(
                        value: PaymentWay.PayWay,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: MyColors.meanColor,
                        groupValue: paymentWay,
                        onChanged: (PaymentWay? value) {
                          setState(() {
                            paymentWay = value;
                          });
                        },
                      ),
                      name: Text('بطاقه الائتمان'),
                      color: paymentWay == PaymentWay.PayWay
                          ? MyColors.meanColor
                          : MyColors.borderPaymentWay,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    customContainerPayment(
                      radio: Radio<PaymentWay>(
                        value: PaymentWay.Epay,
                        groupValue: paymentWay,
                        activeColor: MyColors.meanColor,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onChanged: (PaymentWay? value) {
                          setState(() {
                            paymentWay = value;
                          });
                        },
                      ),
                      name: Image(
                        width: 60.0.w,
                        height: 20.0.h,
                        image: AssetImage('assets/images/epay.png'),
                      ),
                      color: paymentWay == PaymentWay.Epay
                          ? MyColors.meanColor
                          : MyColors.borderPaymentWay,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    customContainerPayment(
                      radio: Radio<PaymentWay>(
                        value: PaymentWay.Stc,
                        groupValue: paymentWay,
                        activeColor: MyColors.meanColor,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onChanged: (PaymentWay? value) {
                          setState(() {
                            paymentWay = value;
                          });
                        },
                      ),
                      name: Image(
                        width: 60.0.w,
                        height: 60.0.h,
                        image: AssetImage('assets/images/stcpay.png'),
                      ),
                      color: paymentWay == PaymentWay.Stc
                          ? MyColors.meanColor
                          : MyColors.borderPaymentWay,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0.w,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 180.0.w,
                      height: 35.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0.r),
                        border: Border.all(
                          color: paymentWay == PaymentWay.ExpireCart
                              ? MyColors.meanColor
                              : MyColors.borderPaymentWay,
                        ),
                      ),
                      child: Row(
                        children: [
                          Radio<PaymentWay>(
                            value: PaymentWay.ExpireCart,
                            groupValue: paymentWay,
                            activeColor: MyColors.meanColor,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            onChanged: (PaymentWay? value) {
                              setState(() {
                                paymentWay = value;
                              });
                            },
                          ),
                          Row(
                            children: [
                              Image(
                                width: 35.0.w,
                                height: 60.0.h,
                                image: AssetImage('assets/images/visa.png'),
                              ),
                              Text(
                                'البطاقه المنتهيه ب4512',
                                style: TextStyle(fontSize: 12.0.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('edit');
                      },
                      child: Text(
                        'تعديل',
                        style: TextStyle(
                          color: MyColors.meanColor,
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              if (paymentWay == PaymentWay.PayWay) ...[
                Padding(
                  padding: EdgeInsets.only(
                    right: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      print('adding new cart');
                    },
                    child: Text(
                      '+اضافه بطاقه جديده',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.w400,
                        color: MyColors.meanColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      CustomFromField(
                        hintText: 'الاسم على البطاقه',
                      ),
                      SizedBox(
                        height: 8.0.h,
                      ),
                      CustomFromField(
                        hintText: 'رقم البطاقه',
                      ),
                      SizedBox(
                        height: 8.0.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150.0.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomFromField(
                                  hintText: 'تاريخ الصلاحيه',
                                ),
                                Text("على نمط شهر /سنه")
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20.0.w,
                          ),
                          Container(
                            width: 150.0.w,
                            child: Column(
                              children: [
                                CustomFromField(
                                  hintText: 'رمز الحمايه',
                                ),
                                Text("3او4 ارقام")
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 8.0.w,
                        ),
                        child: Row(
                          children: [
                            Checkbox(
                                activeColor: MyColors.meanColor,
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value;
                                  });
                                }),
                            Text(
                              'حفظ البطاقه',
                              style: TextStyle(
                                fontSize: 14.0.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ] else if (paymentWay == PaymentWay.Epay) ...[
                Container(),

              ] else if (paymentWay == PaymentWay.ExpireCart) ... [
                Container(),
              ] else ...[
                Align(
                  alignment: Alignment.center,
                  child: CustomFromField(
                    hintText: 'رقم الجوال',
                  ),
                ),
                SizedBox(height: 15.0.h,),
                Container(
                  margin: EdgeInsets.only(right: 20.0.w),
                  width: 150.w,
                  height: 50.0.h,
                  decoration: BoxDecoration(
                    color: MyColors.meanColor,
                    borderRadius: BorderRadius.circular(5.0.r),
                  ),
                  child: Center(
                    child: Text(
                      'تاكيد الرقم ',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomFromField(
                        hintText: 'كوبون خصم ',
                        suffix: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: GestureDetector(
                            onTap: () {
                              print('active');
                            },
                            child: Container(
                              width: 80.0.w,
                              height: 20.0.h,
                              decoration: BoxDecoration(
                                color: MyColors.bgCoupon,
                                borderRadius: BorderRadius.circular(5.0.r),
                              ),
                              child: Center(
                                child: Text(
                                  'تفعيل',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 14.0.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0.h,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "باتمامك عمليه الشراء انت توافق على ",
                          style: TextStyle(
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'شروط الاستخدام',
                              style: TextStyle(
                                fontSize: 13.0.sp,
                                color: MyColors.meanColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0.h,
                      ),
                      customLargeButton(
                        name: 'تاكيد الدفع',
                        onTap: () {
                          print('confirm payments');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
