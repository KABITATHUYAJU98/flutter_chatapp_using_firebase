import 'package:flutter/material.dart';

import 'package:flutter_chatapp/common/pages/signin/controller.dart';
import 'package:flutter_chatapp/common/widgets/buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Widget for logo
    Widget buildLogo() {
      return Container(
        width: 110.w,
        margin: EdgeInsets.only(top: 84.h),
        child: Column(children: [
          //2 sections
          //1st for logo
          Container(
            width: 76.w,
            height: 76.h,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: Stack(
              children: [
                //using stack for better position
                Positioned(
                    child: Container(
                  height: 76.w,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      // AppColors.primaryBackground
                      boxShadow: [
                        //Shadows.primaryshadow
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(35))),
                )),

                //for image
                Positioned(
                    child: Image.asset(
                  "assets/images/message.png",
                  width: 76.w,
                  height: 76.w,
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),

          //2nd for Text
          Container(
            margin: EdgeInsets.only(top: 15.h, bottom: 15.h),
            child: const Text(
              "Let's Chat",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  //AppColors.thirdElement,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  height: 1,
                  decoration: TextDecoration.none),
            ),
          )
        ]),
      );
    }

    ///Another Widget
    Widget buildThirdPartyLogin() {
      return Container(
        width: 295.w,
        margin: EdgeInsets.only(bottom: 400.h),
        child: Column(children: [
          Text(
            "Sign in with Social Networks",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,
                decoration: TextDecoration.none),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 50, right: 50),
            child: FlatBtnWidget(
                onPressed: () {},
                width: 200.w,
                height: 55.h,
                title: "Google Login"),
          )
        ]),
      );
    }

    return Center(
      child: Column(
          children: [buildLogo(), const Spacer(), buildThirdPartyLogin()]),
    );
  }
}
