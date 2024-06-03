// import 'package:career_center/utils/app_colors.dart';
// import 'package:career_center/widgets/custom_appbar.dart';
// import 'package:career_center/widgets/custom_text.dart';
// import 'package:flutter/material.dart';

// class OtpScreen extends StatefulWidget {
//   const OtpScreen({super.key});

//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }

// class _OtpScreenState extends State<OtpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(text: 'Forget Password'),
//       body: Center(
//         child: Column(
//           children: [
//             CText(text: '4 Digit Code', fontSize: 32,color: AppColors.headingcolor,),
//             CText(text: 'Enter the OTP you received to', fontSize: 20,fontWeight: FontWeight.w400, color: AppColors.primarybackColor,)
//              ,     CText(text: '+ 92 300 11221122', fontSize: 20, color: AppColors.primarybackColor,)

//         //
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:pinput/pinput.dart';

// /// This is the basic usage of Pinput
// /// For more examples check out the demo directory
// class OtpScreen extends StatefulWidget {
//   const OtpScreen({Key? key}) : super(key: key);

//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }

// class _OtpScreenState extends State<OtpScreen> {
//   final pinController = TextEditingController();
//   final focusNode = FocusNode();
//   final formKey = GlobalKey<FormState>();

//   @override
//   void dispose() {
//     pinController.dispose();
//     focusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
//     const fillColor = Color.fromRGBO(243, 246, 249, 0);
//     const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

//     final defaultPinTheme = PinTheme(
//       width: 56,
//       height: 56,
//       textStyle: const TextStyle(
//         fontSize: 22,
//         color: Color.fromRGBO(30, 60, 87, 1),
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(19),
//         border: Border.all(color: borderColor),
//       ),
//     );

//     /// Optionally you can use form to validate the Pinput
//     return Form(
//       key: formKey,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Directionality(
//             // Specify direction if desired
//             textDirection: TextDirection.ltr,
//             child: Pinput(
//               controller: pinController,
//               focusNode: focusNode,
//               androidSmsAutofillMethod:
//                   AndroidSmsAutofillMethod.smsUserConsentApi,
//               listenForMultipleSmsOnAndroid: true,
//               defaultPinTheme: defaultPinTheme,
//               separatorBuilder: (index) => const SizedBox(width: 8),
//               validator: (value) {
//                 return value == '2222' ? null : 'Pin is incorrect';
//               },
//               // onClipboardFound: (value) {
//               //   debugPrint('onClipboardFound: $value');
//               //   pinController.setText(value);
//               // },
//               hapticFeedbackType: HapticFeedbackType.lightImpact,
//               onCompleted: (pin) {
//                 debugPrint('onCompleted: $pin');
//               },
//               onChanged: (value) {
//                 debugPrint('onChanged: $value');
//               },
//               cursor: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.only(bottom: 9),
//                     width: 22,
//                     height: 1,
//                     color: focusedBorderColor,
//                   ),
//                 ],
//               ),
//               focusedPinTheme: defaultPinTheme.copyWith(
//                 decoration: defaultPinTheme.decoration!.copyWith(
//                   borderRadius: BorderRadius.circular(8),
//                   border: Border.all(color: focusedBorderColor),
//                 ),
//               ),
//               submittedPinTheme: defaultPinTheme.copyWith(
//                 decoration: defaultPinTheme.decoration!.copyWith(
//                   color: fillColor,
//                   borderRadius: BorderRadius.circular(19),
//                   border: Border.all(color: focusedBorderColor),
//                 ),
//               ),
//               errorPinTheme: defaultPinTheme.copyBorderWith(
//                 border: Border.all(color: Colors.redAccent),
//               ),
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               focusNode.unfocus();
//               formKey.currentState!.validate();
//             },
//             child: const Text('Validate'),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:career_center/screens/authentication/forget/new_password_screen.dart';
import 'package:career_center/utils/app_colors.dart';
import 'package:career_center/widgets/custom_appbar.dart';
import 'package:career_center/widgets/custom_text.dart';
import 'package:career_center/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
// import 'package:tribe_event/screens/authentication/forgot_password/new_password_screen.dart';
// import 'package:tribe_event/screens/authentication/login/login_controller.dart';
// import 'package:tribe_event/utils/app_color.dart';
// import 'package:tribe_event/utils/app_toast.dart';
// import 'package:tribe_event/widgets/custom_text.dart';
// import 'package:tribe_event/widgets/primary_button.dart';

// import '../Controller/auth_controller.dart';

// ignore: must_be_immutable
class OtpScreen extends StatelessWidget {
// int code;

  OtpScreen({
    super.key,
  });
  // var authController = Get.put(AuthController());

  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  void dispose() {
    focusNode.dispose();
  }

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryappcolor,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.r),
      border: Border.all(color: AppColors.primaryappcolor),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(text: 'Forget Password'),
        backgroundColor: AppColors.whitesoftColor,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
                  width: Get.width,
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 50.h),
                  child: Form(
                    key: formKey,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 117.h,
                          ),
                          CText(
                            text: '4 Digit Code',
                            fontSize: 32,
                            color: AppColors.headingcolor,
                          ),
                          CText(
                            text: 'Enter the OTP you received to',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primarybackColor,
                          ),
                          CText(
                            text: '+ 92 300 11221122',
                            fontSize: 20,
                            color: AppColors.primarybackColor,
                          ),
                          CText(
                            text: 'Enter password',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primarywhiteColor,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          CText(
                            text: "Enter password we have sent you",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primarywhiteColor,
                            maxLines: 2,
                          ),
                          const SizedBox(height: 23),
                          Pinput(
                            useNativeKeyboard: true,
                            controller: TextEditingController(),
                            focusNode: focusNode,
                            focusedPinTheme: defaultPinTheme,
                            length: 5,
                            listenForMultipleSmsOnAndroid: true,
                            defaultPinTheme: defaultPinTheme,
                            separatorBuilder: (index) => SizedBox(
                              width: 19.w,
                              height: 90.h,
                            ),
                            validator: (value) {
                              // return value.toString() == code.toString() ? null : 'Pin is incorrect';
                            },
                            hapticFeedbackType: HapticFeedbackType.lightImpact,
                            onCompleted: (pin) {
                              // if(pin.toString()==code.toString()){
                              //   // Get.to(NewPasswordScreen());
                              // }else{
                              //   // appToast('Please enter the valid otp');
                              // }
                              debugPrint('onCompleted: $pin');
                            },
                            onChanged: (value) {
                              debugPrint('onChanged: $value');
                            },
                            cursor: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 9.h),
                                  width: 22.w,
                                  height: 1.h,
                                  color: AppColors.primaryappcolor,
                                ),
                              ],
                            ),
                            submittedPinTheme: defaultPinTheme.copyWith(
                              decoration: defaultPinTheme.decoration!.copyWith(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: AppColors.primaryappcolor),
                              ),
                            ),
                            errorPinTheme: defaultPinTheme.copyBorderWith(
                              border: Border.all(color: Colors.redAccent),
                            ),
                          ),
                          SizedBox(
                            height: 23.h,
                          ),
                          CText(
                            text: 'Don’t receive a code?',
                            fontSize: 16,
                            color: AppColors.primarybackColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () {},
                                  child: CText(
                                    text: 'Resend code',
                          style: const TextStyle(
              decoration: TextDecoration.underline,
              color: AppColors.primaryappcolor
            ),     
              // textDecoration: TextDecoration.underline,
            
            
          
                                    fontSize: 18,
                                    color: AppColors.primaryappcolor,
                                  )),
                              SizedBox(
                                width: 5.w,
                              ),
                              CText(
                                text: 'in 01:30',
                                fontSize: 18,
                                color: AppColors.primarybackColor,
                              ),
                            ],
                          ),
                          SizedBox(height: 250.h,),
                          PrimaryButton(
                              text: 'Continue',
                              onTap: () {
                                Get.to(NewPasswordScreen());
                                // if(authController.pinController.text.isEmpty){
                                //   appToast('OTP is required');
                                // }else if(authController.pinController.text.length<5){
                                //   appToast('Please enter a valid otp');
                                // }else {
                                //   focusNode.unfocus();
                                //   formKey.currentState!.validate();
                                //   Get.to(NewPasswordScreen());
                                // }
                              })
                        ],
                      ),
                    ),
                  ))),
        ));
  }
}
