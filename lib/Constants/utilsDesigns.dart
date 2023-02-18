import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wind_tech/Constants/ColorConstants.dart';

Container SocialContainer(var onTap, IconData iconName) {
  return Container(
    height: 60.h,
    width: 100.w,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 1.w),
      borderRadius: BorderRadius.circular(10.r),
      boxShadow: [
        BoxShadow(
          color: kPrimaryColor,
        ),
        BoxShadow(
          color: Colors.white,
          spreadRadius: -8.r,
          blurRadius: 13.r,
        ),
      ],
    ),
    child: IconButton(
      icon: Icon(
        iconName,
        color: KSkyColor,
      ),
      onPressed: onTap,
    ),
  );
}

Center RowLineText(var Name) {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 2.h,
          width: Get.width * 0.15,
          color: kPrimaryColor,
        ),
        Container(
          height: 40.h,
          width: 40.w,
          child: Image(
            image: AssetImage('assets/images/p1.png'),
            fit: BoxFit.contain,
          ),
        ),
        Text("\t\t ${Name} \t\t",
            style: GoogleFonts.josefinSans(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
            )),
        Container(
          height: 40.h,
          width: 40.w,
          child: Image(
            image: AssetImage('assets/images/p2.png'),
            fit: BoxFit.contain,
          ),
        ),
        Container(
          height: 2.h,
          width: Get.width * 0.15,
          color: kPrimaryColor,
        ),
      ],
    ),
  );
}

GestureDetector BackBtn() {
  return GestureDetector(
    onTap: () {
      Get.back();
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 6.w),
      height: 36.h,
      width: 36.w,
      decoration: BoxDecoration(
        color: KSecColor.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: Icon(
        Icons.arrow_back_ios_new_outlined,
        color: kPrimaryColor,
        size: 25.sp,
      ),
    ),
  );
}
