import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wind_tech/Constants/ColorConstants.dart';
import 'package:wind_tech/Constants/utilsDesigns.dart';
import 'package:wind_tech/Widgets/customized_textfield.dart';
import 'package:wind_tech/Widgets/customized_textformfield.dart';

import '../../Widgets/customizted_btn.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  var username = "";
  var email = "";
  var password = "";
  var confirmPassword = "";

  bool _isVisible = false;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

//////////////////////////Sign Up + Registration /////////////

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              height: Get.height,
              width: Get.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.h.heightBox,
                      Center(
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: kCaptionColor, shape: BoxShape.circle),
                        ),
                      ),
                      30.h.heightBox,
                      ////////////////////////////
                      Container(
                        height: 50.h,
                        child: CustomizedTextfield(
                          myController: _userNameController,
                          hintText: "Username",
                        ),
                      ),
                      10.h.heightBox,
                      ///////////////////////////
                      Container(
                        height: 50.h,
                        child: CustomizedTextFormfield(
                          myController: _emailController,
                          hintText: "Email",
                          isPassword: false,
                        ),
                      ),
                      10.h.heightBox,

                      //////////////////////////////////////////
                      Container(
                        height: 50.h,
                        child: CustomizedTextFormfield(
                          myController: _passwordController,
                          hintText: "Password",
                          isPassword: true,
                        ),
                      ),
                      10.h.heightBox,

                      ////////////////////////
                      ConfirmPasswordWidget(),

                      ////////////////////////
                      15.h.heightBox,
                      RowLineText("or Register with"),
                      10.h.heightBox,
                      //////////////////////////////
                      Container(
                        height: 50.h,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: CustomButton(
                          text: "Register",
                          onPressed: () {
                            // if (_formKey.currentState!.validate()) {
                            //   setState(() {
                            //     username = _userNameController.text;
                            //     email = _emailController.text;
                            //     password = _passwordController.text;
                            //     confirmPassword = _confirmPasswordController.text;
                            //   });
                            // }
                          },
                        ),
                      ),
                      15.h.heightBox,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SocialContainer(() {}, FontAwesomeIcons.facebookF),
                          SocialContainer(() {}, FontAwesomeIcons.google),
                          SocialContainer(
                            () {},
                            FontAwesomeIcons.apple,
                          ),
                        ],
                      ),
                      40.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Already have an account?",
                              style: GoogleFonts.josefinSans(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.sp,
                              )),
                          InkWell(
                            onTap: () {
                              Get.to(() => LoginScreen());
                            },
                            child: Text("Login Now",
                                style: GoogleFonts.josefinSans(
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.sp,
                                    decoration: TextDecoration.underline)),
                          ),
                        ],
                      ),
                      10.h.heightBox,
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container ConfirmPasswordWidget() {
    return Container(
      height: 50.h,
      child: TextFormField(
        enableSuggestions: true,
        obscureText: _isVisible ? false : true,
        controller: _confirmPasswordController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter Confirm Password';
          } else if (_confirmPasswordController.text !=
              _passwordController.text) {
            return 'Please enter Correct Password';
          }
          return null;
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor, width: 1.w),
            borderRadius: BorderRadius.circular(10.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor, width: 1.w),
            borderRadius: BorderRadius.circular(10.r),
          ),
          suffixIcon: IconButton(
            color: kPrimaryColor,
            icon:
                Icon(_isVisible ? Icons.remove_red_eye : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
          ),
          hintText: "Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}
