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

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Signup'),
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
                CText(
                  text: 'Create account:',
                  fontSize: 20,
                  color: AppColors.headingcolor,
                ),

                CText(
                  text: 'Name:',
                  fontSize: 16,
                  color: AppColors.headingcolor,
                ),
                Column(
                  children: [
                    CustomTextField(
                      preffixIcon: const Icon(Icons.person),
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
                    // SizedBox(
                    //   height: 8.h,
                    // ),

                    // SizedBox(
                    //   height: 15.h,
                    // ),
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
                      preffixIcon: const Icon(Icons.mail),
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

                CText(
                  text: 'Phone number:',
                  fontSize: 16,
                  color: AppColors.headingcolor,
                ),
                Column(
                  children: [
                    CustomTextField(
                      preffixIcon: const Icon(Icons.call),
                      controller: loginController.emailController,
                      hintText: '+92 302 3000600',
                      // color: AppColors.primarybackColor,
                      keyboardType: TextInputType.emailAddress,
                      function: (value) {
                        if (value!.isEmpty) {
                          return "Provide your phone number";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                CText(
                  text: 'Password:',
                  fontSize: 16,
                  color: AppColors.headingcolor,
                ),
                Column(
                  children: [
                    CustomTextField(
                      controller: loginController.passwordController,
                      hintText: '*** *** ****',
                      keyboardType: TextInputType.emailAddress,
                      // textcolor: AppColors.blackColor,
                      preffixIcon: const Icon(Icons.lock),
                      hasSuffix: true,
                      isPassword: true,
                      suffixIcon: const Icon(
                        Icons.visibility,
                        color: AppColors.primarybackColor,
                      ),
                      suffixIconSize: 20,
                      function: (value) {
                        if (value!.isEmpty) {
                          return "Provide password";
                        }
                        return null;
                      },
                    ),
                  ],
                ),

                SizedBox(
                  height: 24.h,
                ),
                // PrimaryButton(
                //     text: "Log into your account",
                // onTap: () {
                //   Get.to(() => const BotomnavbarScreen());
                // }),
                PrimaryButton2(
                    text: 'Signup',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    }),
                SizedBox(
                  height: 21.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Divider(
                      color: AppColors.dividercolor,
                      thickness: 1,
                      indent: 200,
                      // endIndent: 250,
                    ),
                    CText(
                      text: 'Or',
                      fontSize: 20,
                      color: AppColors.primarybackColor,
                    ),
                    const Divider(
                      color: AppColors.dividercolor,
                      thickness: 1,
                      // indent: 10,
                      endIndent: 180,
                    ),
                  ],
                ),
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImaes.google),
                    SizedBox(
                      width: 32.w,
                    ),
                    Image.asset(AppImaes.facebook),
                    SizedBox(
                      width: 32.w,
                    ),
                    Image.asset(AppImaes.apple),
                  ],
                ),
                SizedBox(
                  height: 100.h,
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
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      // onTap: () {
                      //   Get.to(() => Signup());
                      // },
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
