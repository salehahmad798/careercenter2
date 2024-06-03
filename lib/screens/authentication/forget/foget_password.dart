import 'package:career_center/screens/authentication/Signup/Signup.dart';
import 'package:career_center/screens/authentication/forget/otp_screen.dart';
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

class ForgetPasswordScreen extends StatefulWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final loginController = Get.put(LoginController());

var foo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Forget Password'),
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
                      AppImaes.forgetpassword,
                      width: 429.w,
                      height: 333.h,
                    ),
                  ),
                ),
                
                CText(
                  text: '''Select which method you want to reset your password''',
                  fontSize: 16,
                  color: AppColors.headingcolor,
                ),
                SizedBox(height: 23.h,),
                Column(
                  children: [
                    CustomTextField(
                      textcolor: AppColors.primarybackColor,
                      
                      preffixIcon: Icon(Icons.message,color: AppColors.primaryappcolor,size: 32,),
                      controller: loginController.emailController,
                      hintText: '+6396*****92',
                      suffixIcon:IconButton(onPressed: (){
                        setState(() => foo = true);
                      },icon: Icon(Icons.check_circle_outline_rounded,color: AppColors.primaryappcolor,),),
                      hasSuffix: true,
                      
              //         suffixIcon: Checkbox(
              //   value: foo,
              //   onChanged: ( value) {
              //     setState(() => foo = value!);
              //   },
              // ),
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
                Column(
                  children: [
                    InkWell(onTap: () {
                         Checkbox(
                value: foo,
                onChanged: ( value) {
                  setState(() => foo = value!);
                },
              );
                    },
                      child: CustomTextField(
                        controller: loginController.passwordController,
                        hintText: 'Jor***.domain.com',
                        keyboardType: TextInputType.emailAddress,
                      textcolor: AppColors.primarybackColor,

                        // textcolor: AppColors.blackColor,
                        preffixIcon: Icon(Icons.mail,color: AppColors.primaryappcolor,size: 30,),
                        hasSuffix: true,
                        // isPassword: true,
                        suffixIcon: const Icon(
                          Icons.check_circle_outline,
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
                    ),
                  ],
                ),
               
               
                SizedBox(height: 61.h,),
                PrimaryButton2(
                    text: 'Continue',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OtpScreen()));
                    }),
                SizedBox(
                  height: 230.h,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
