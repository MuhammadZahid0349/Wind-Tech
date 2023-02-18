import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wind_tech/Constants/ColorConstants.dart';

class CustomizedTextfield extends StatelessWidget {
  final TextEditingController myController;
  final String? hintText;
  // final bool? isPassword;

  const CustomizedTextfield(
      {Key? key, required this.myController, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor, width: 1.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor, width: 1.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        // errorText: _errorText,
      ),
    );
  }
}
