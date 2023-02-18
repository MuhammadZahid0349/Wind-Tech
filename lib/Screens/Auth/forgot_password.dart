import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wind_tech/Constants/ColorConstants.dart';
import 'package:wind_tech/Constants/utilsDesigns.dart';
import 'package:wind_tech/Screens/Auth/login_screen.dart';
import 'package:wind_tech/Widgets/customized_textformfield.dart';
import 'package:wind_tech/Widgets/customizted_btn.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  var email = "";

  TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          width: Get.width,
          child: Image(
            image: AssetImage('assets/images/bgt2.png'),
            fit: BoxFit.cover,
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              height: Get.height,
              width: Get.width,
              ///////////////////////////////
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [BackBtn()],
                      ),
                      80.h.heightBox,
                      /////////////////
                      Text(
                        "Forgot Password!!",
                        style: GoogleFonts.josefinSans(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 25.sp,
                          letterSpacing: 2,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.double,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: KSecColor.withOpacity(0.5),
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                      15.h.heightBox,
                      Text(
                        "\t\t\t  Don't worry! It occurs. Please enter the email address which linked with your account...",
                        softWrap: true,
                        style: GoogleFonts.josefinSans(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Color(0xff2891cf).withOpacity(0.3),
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                      35.h.heightBox,
                      ////////////////////////////
                      CustomizedTextFormfield(
                        myController: _emailController,
                        hintText: "Enter your Email",
                        isPassword: false,
                      ),
                      ///////////////////////////////
                      40.h.heightBox,
                      //////////////////////////////
                      Container(
                        height: 50.h,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: CustomButton(
                          text: "Send Email",
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                email = _emailController.text;
                              });
                              // resetPassword(context, email);
                            }
                          },
                        ),
                      ),
                      20.h.heightBox,

                      ////////////////////////////////////////////////////
                      RowLineText("* * * * *"),
                      30.h.heightBox,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Remember Password ?",
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

                      /////////////////////////////////////////
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
