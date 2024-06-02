import 'package:career_center/screens/authentication/Signup/Signup.dart';
import 'package:career_center/screens/authentication/login/login_controller.dart';
import 'package:career_center/screens/language_location/language_location.dart';
import 'package:career_center/utils/app_colors.dart';
import 'package:career_center/utils/app_images.dart';
import 'package:career_center/widgets/custom_appbar.dart';
import 'package:career_center/widgets/custom_text.dart';
import 'package:career_center/widgets/custom_textfield.dart';
import 'package:career_center/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Sign in'),
      backgroundColor: AppColors.primarywhiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.h,
                  ),
                  child: Center(
                    child: Image.asset(
                      AppImaes.CareerCenterImage,
                      width: 164.w,
                      height: 164.h,
                    ),
                  ),
                ),
                
                CText(
                  text: 'User Name:',
                  fontSize: 16,
                  color: AppColors.headingcolor,
                ),
                Column(
                  children: [
                    CustomTextField(
                      preffixIcon: Icon(Icons.person),
                      controller: loginController.emailController,
                      hintText: 'Shaukat Ali',
                      // color: AppColors.primarybackColor,
                      keyboardType: TextInputType.emailAddress,
                      function: (value) {
                        if (value!.isEmpty) {
                          return "Provide User Name";
                        }
                        return null;
                      },
                    ),
                    
                   
                  ],
                ),
                
                 CText(
                  text: 'Email:',
                  fontSize: 16,
                  color: AppColors.headingcolor,
                ),
                Column(
                  children: [
                    CustomTextField(
                      controller: loginController.passwordController,
                      hintText: 'abc123@gmail.com',
                      keyboardType: TextInputType.emailAddress,
                      // textcolor: AppColors.blackColor,
                      preffixIcon: Icon(Icons.mail),
                      hasSuffix: true,
                      isPassword: true,
                      suffixIcon: const Icon(
                        Icons.visibility,
                        color: AppColors.primarybackColor,
                      ),
                      suffixIconSize: 20,
                      function: (value) {
                        if (value!.isEmpty) {
                          return "Provide Email";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
               
                // PrimaryButton(
                //     text: "Log into your account",
                // onTap: () {
                //   Get.to(() => const BotomnavbarScreen());
                // }),
                SizedBox(height: 30.h,),
                PrimaryButton2(
                    text: 'Log In',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()));
                    }),
                SizedBox(
                  height: 230.h,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CText(
                      text: "Don’t have an account?",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primarybackColor,
                      textDecoration: TextDecoration.underline,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SignupScreen());
                      },
                      child: CText(
                        text: "Register",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryappcolor,
                        textDecoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
