import 'package:career_center/screens/authentication/Signup/Signup.dart';
import 'package:career_center/screens/authentication/forget/otp_screen.dart';
import 'package:career_center/screens/authentication/login/login_controller.dart';
import 'package:career_center/screens/language_location/language_location.dart';
import 'package:career_center/screens/location/current_location.dart';
import 'package:career_center/utils/app_colors.dart';
import 'package:career_center/utils/app_images.dart';
import 'package:career_center/widgets/custom_appbar.dart';
import 'package:career_center/widgets/custom_text.dart';
import 'package:career_center/widgets/custom_textfield.dart';
import 'package:career_center/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NewPasswordScreen extends StatefulWidget {
  NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final loginController = Get.put(LoginController());

  var foo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'New Password'),
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
                      AppImaes.newpassword,
                      width: 429.w,
                      height: 316.h,
                    ),
                  ),
                ),
                CText(
                  text: '''Create Your New Password:''',
                  fontSize: 16,
                  color: AppColors.headingcolor,
                ),
                SizedBox(
                  height: 23.h,
                ),
                CText(
                  text: 'Password:',
                  fontSize: 16,
                  color: AppColors.headingcolor,
                ),
                Column(
                  children: [
                    CustomTextField(
                      preffixIcon: Icon(
                        Icons.lock,
                        size: 32,
                      ),
                      controller: loginController.emailController,
                      hintText: '*** *** ***',

                      // color: AppColors.primarybackColor,
                      keyboardType: TextInputType.emailAddress,
                      function: (value) {
                        if (value!.isEmpty) {
                          return "Provide User Name";
                        }
                        return null;
                      },
                      textcolor: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 23.h,
                ),
                CText(
                  text: 'Confirm Password:',
                  fontSize: 16,
                  color: AppColors.headingcolor,
                ),
                Column(
                  children: [
                    CustomTextField(
                      controller: loginController.passwordController,
                      hintText: '*** *** ***',
                      keyboardType: TextInputType.emailAddress,
                      textcolor: AppColors.primarybackColor,
                      preffixIcon: Icon(
                        Icons.lock,
                        size: 30,
                      ),
                      suffixIcon: const Icon(
                        Icons.check_circle_outline,
                        color: AppColors.primarybackColor,
                      ),
                      suffixIconSize: 20,
                      function: (value) {
                        if (value!.isEmpty) {
                          return "Provide confirm password";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 55.h,
                ),
                PrimaryButton2(
                    text: 'Continue',
                    onTap: () {
                      Get.to(mydialog());
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

  mydialog() {
    return Get.dialog(
        // barrierDismissible: false,
        Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImaes.Congratulations,
              height: 225,
              width: 289,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: CText(
                  text: 'Congratulations !!',
                  fontSize: 24,
                  color: AppColors.primarybackColor,
                )),
            Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Center(
                  child: CText(
                    text: 'Your Password has been generated successfully',
                    fontSize: 16,
                    maxLines: 2,
                    color: AppColors.primarybackColor,
                  ),
                )),
            // Divider(
            //   color: AppColor.grey,
            //   thickness: 1,
            // ),
            Center(
              child: GestureDetector(
                onTap: (){
Get.to(CurrentLocation());
                },
                child: Container(
                  height: 60.h,
                  width: 224.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.primaryappcolor,
                      borderRadius:  BorderRadius.all(Radius.circular(50.r))),
                  child: CText(
              text:       "Continue",
              fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

// Future mydialog(){
//   return  Get.dialog(
//             barrierDismissible: false,
//             Dialog(
//               backgroundColor: AppColor.transparent,
//               child: WillPopScope(
//                 onWillPop: () async => false,
//                 child: Container(
//                   padding: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20)),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Center(
//                         child: Text("No Internet Connection"),
//                       ),
//                       SizedBox(height:10,),
//                       Image.asset(AppImage.internetConnection,height:30),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 10),
//                         child: Text("Please check your connection again,or connect to wi-fi.",),
//                       ),
//                       Divider(
//                         color: AppColor.grey,
//                         thickness: 1,
//                       ),
//                       Inkwell(
//                         onTap: () {
//                             Get.to(() => const AllVideoScreen());
//                         }, child: Center(
//                         child: Container(
//                           height:50,
//                           width: 30,
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                               color: AppColor.blackWhite,
//                               borderRadius: const BorderRadius.all(Radius.circular(10))
//                           ),
//                           child: Text(
//                              "Refresh",
                            
//                           ),
//                         ),
//                       ),),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//         );
// }