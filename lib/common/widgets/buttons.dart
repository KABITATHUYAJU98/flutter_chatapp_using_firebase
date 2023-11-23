import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget FlatBtnWidget(
    {required VoidCallback onPressed,
    double width = 140,
    double height = 44,
    Color gbColor = Colors.blue,
    //AppColors.primaryElement
    String title = "button",
    Color fontColor = Colors.white,
    //AppColors.primaryElementText
    double fontSize = 16,
    String fontName = "Kabita",
    FontWeight fontWeight = FontWeight.w400}) {
  var w;
  return Container(
    width: width.w,
    height: height.h,
    child: TextButton(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(TextStyle(
          fontSize: 16.sp,
        )),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.focused) &&
              !states.contains(MaterialState.pressed)) {
            return Colors.blue;
          } else if (states.contains(MaterialState.pressed)) {
            return Colors.deepPurple;
          }
          return fontColor;
        }),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.blue[200];
          }
          return gbColor;
        }),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          //Radii.k6pxRadius
        )),
      ),
      child: Text(title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: fontColor,
              fontWeight: fontWeight,
              fontSize: fontSize.sp,
              height: 1)),
      onPressed: onPressed,
    ),
  );
}

///
Widget flatBtnButtonBorderOnlyWidget(
    {required VoidCallback onPressed,
    double width = 88,
    double height = 44,
    required String iconFileName}) {
  return Container(width: width.w, height: height.h,
  child: TextButton(style: ButtonStyle(
    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),
    //Radii.k6pxRadius

    ))
  ),
  child: Image.asset("assets/images/icons-$iconFileName.png"),
  onPressed: onPressed,),);
}
