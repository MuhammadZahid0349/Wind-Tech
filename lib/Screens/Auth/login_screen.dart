import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wind_tech/Constants/ColorConstants.dart';
import 'package:wind_tech/Constants/utilsDesigns.dart';
import 'package:wind_tech/Screens/Auth/forgot_password.dart';
import 'package:wind_tech/Screens/Auth/signup_screen.dart';
import 'package:wind_tech/Widgets/customized_textformfield.dart';
import 'package:wind_tech/Widgets/customizted_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var email = "";
  var password = "";

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Container(
                height: Get.height,
                width: Get.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      50.h.heightBox,
                      Center(
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: kCaptionColor, shape: BoxShape.circle),
                        ),
                      ),
                      50.h.heightBox,
                      ////////////////////////////
                      CustomizedTextFormfield(
                        myController: _emailController,
                        hintText: "Enter your Email",
                        isPassword: false,
                      ),
                      15.h.heightBox,

                      //////////////////////////////////////////
                      CustomizedTextFormfield(
                        myController: _passwordController,
                        hintText: "Enter your Password",
                        isPassword: true,
                      ),
                      ////////////////////////
                      25.h.heightBox,
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => ForgotPassword());
                          },
                          child: Text('Forget Password ?',
                              style: GoogleFonts.josefinSans(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.sp,
                                  decoration: TextDecoration.underline)),
                        ),
                      ),
                      20.h.heightBox,
                      Container(
                          height: 50.h,
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(10.r)),
                          child: CustomButton(onPressed: () {}, text: "Login")),

                      15.h.heightBox,
                      ////////////////////////////////////////////////////
                      RowLineText("or Login with"),

                      12.h.heightBox,

                      ////////////////////////////////////////////////////
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
                      60.h.heightBox,
                      //////////////////////////////////////////////////

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Don't have an account?",
                              style: GoogleFonts.josefinSans(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.sp,
                              )),
                          InkWell(
                            onTap: () {
                              Get.to(() => SignUpScreen());
                            },
                            child: Text("Register Now",
                                style: GoogleFonts.josefinSans(
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.sp,
                                    decoration: TextDecoration.underline)),
                          ),
                        ],
                      ),
                      20.h.heightBox,
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
