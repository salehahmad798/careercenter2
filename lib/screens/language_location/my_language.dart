import 'package:career_center/screens/authentication/login/login_screen.dart';
import 'package:career_center/screens/language_location/system_language.dart';
import 'package:career_center/utils/app_colors.dart';
import 'package:career_center/utils/app_images.dart';
import 'package:career_center/widgets/custom_appbar.dart';
import 'package:career_center/widgets/custom_text.dart';
import 'package:career_center/widgets/custom_textfield.dart';
import 'package:career_center/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyLanguageScreen extends StatefulWidget {
  const MyLanguageScreen({super.key});

  @override
  State<MyLanguageScreen> createState() => _MyLanguageScreenState();
}

class _MyLanguageScreenState extends State<MyLanguageScreen> {
  bool value = false;
  bool iscolor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Language & Location'),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // MyForm(),
              CustomTextField(
          preffixIcon: Icon(Icons.search,size: 30,color:AppColors.searchIconColor ,),

                  controller: TextEditingController(),
                  suffixIcon: Icon(
                    Icons.voice_over_off_outlined,
                    size: 25,
                    color: AppColors.primarybackColor,
                  ),
                  hintText: 'Search for a Language',
                  keyboardType: TextInputType.name),

              CText(
                text: 'Please List the languages you know:',
                fontSize: 16,
                color: AppColors.listtextcolor,
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(AppImaes.imagelanguagelevels),
                      SizedBox(
                        width: 12.w,
                      ),
                      CText(
                        text: 'Languages ',
                        fontSize: 16,
                        color: AppColors.primaryappcolor,
                      ),
                    ],
                  ),
                  CText(
                    text: 'Levels ',
                    fontSize: 16,
                    color: AppColors.primaryappcolor,
                  ),
                  CText(
                    text: 'Native ',
                    fontSize: 16,
                    color: AppColors.primaryappcolor,
                  ),
                ],
              ),
              SizedBox(
                height: 21.h,
              ),
              const Divider(
                color: AppColors.dividercolor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            color: AppColors.englishboxcolor,
                            borderRadius: BorderRadius.circular(50.r)),
                        child: CText(
                          fontSize: 10,
                          text: 'C1',
                          alignText: TextAlign.center,
                          color: AppColors.whitesoftColor,
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(AppImaes.usflag),
                              SizedBox(
                                width: 6.w,
                              ),
                              CText(
                                text: 'English',
                                fontSize: 14,
                                color: AppColors.headingcolor,
                              ),
                            ],
                          ),
                          CText(
                            text: 'System Language',
                            fontSize: 8,
                            color: AppColors.greyColor,
                          )
                        ],
                      ),
                    ],
                  ),
                  // heef
                  Row(
                    children: [
                      CText(
                        text: 'Advanced',
                        fontSize: 14,
                        color: AppColors.levelscolor,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            size: 35,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: <Widget>[
                          Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryappcolor,
                                  borderRadius: BorderRadius.circular(50.r)),
                              child: const Icon(
                                Icons.done,
                                size: 20,
                              )),
                        ],
                      ),
                      
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 21.h,
              ),
              const Divider(
                color: AppColors.dividercolor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            color: AppColors.primarybluecolor,
                            borderRadius: BorderRadius.circular(50.r)),
                        child: CText(
                          fontSize: 10,
                          text: 'B2',
                          alignText: TextAlign.center,
                          color: AppColors.whitesoftColor,
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Row(
                        children: [
                          Image.asset(AppImaes.flagRussia),
                          SizedBox(
                            width: 6.w,
                          ),
                          CText(
                            text: 'Русский',
                            fontSize: 14,
                            color: AppColors.headingcolor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  // heef
                  Row(
                    children: [
                      CText(
                        text: 'Intermediate',
                        fontSize: 14,
                        color: AppColors.levelscolor,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            size: 35,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: <Widget>[
                          Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryappcolor,
                                  borderRadius: BorderRadius.circular(50.r)),
                              child: const Icon(
                                Icons.done,
                                size: 20,
                              )),
                        ],
                      ),
                      
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 21.h,
              ),
              const Divider(
                color: AppColors.dividercolor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            color: AppColors.primaryappcolor,
                            borderRadius: BorderRadius.circular(50.r)),
                        child: CText(
                          fontSize: 10,
                          text: 'C2',
                          alignText: TextAlign.center,
                          color: AppColors.whitesoftColor,
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Row(
                        children: [
                          Image.asset(AppImaes.flagArmenia),
                          SizedBox(
                            width: 6.w,
                          ),
                          CText(
                            text: 'Հայերեն',
                            fontSize: 14,
                            color: AppColors.headingcolor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  // heef
                  Row(
                    children: [
                      CText(
                        text: 'Proficient',
                        fontSize: 14,
                        color: AppColors.levelscolor,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            size: 35,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: <Widget>[
                          Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryappcolor,
                                  borderRadius: BorderRadius.circular(50.r)),
                              child: const Icon(
                                Icons.done,
                                size: 20,
                              )),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(50.r)),
                          //   child: Checkbox(
                          //     focusColor: iscolor == false
                          //         ? AppColors.primaryappcolor
                          //         : AppColors.greyColor,
                          //     value: this.value,
                          //     onChanged: (bool? value) {
                          //       setState(() {
                          //         this.value = value!;
                          //         iscolor = true;
                          //       });
                          //     },
                          //   ),
                          // ),
                        ],
                      ),
                      
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 21.h,
              ),
              const Divider(
                color: AppColors.dividercolor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            color: AppColors.englishboxcolor,
                            borderRadius: BorderRadius.circular(50.r)),
                        child: CText(
                          fontSize: 10,
                          text: 'A2',
                          alignText: TextAlign.center,
                          color: AppColors.whitesoftColor,
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Row(
                        children: [
                          Image.asset(AppImaes.espanola),
                          SizedBox(
                            width: 6.w,
                          ),
                          CText(
                            text: 'Española',
                            fontSize: 14,
                            color: AppColors.headingcolor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  // heef
                  Row(
                    children: [
                      CText(
                        text: 'Elementary',
                        fontSize: 14,
                        color: AppColors.levelscolor,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            size: 35,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: <Widget>[
                          Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryappcolor,
                                  borderRadius: BorderRadius.circular(50.r)),
                              child: const Icon(
                                Icons.done,
                                size: 20,
                              )),
                        ],
                      ),
                      
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 21.h,
              ),
              const Divider(
                color: AppColors.dividercolor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            color: AppColors.primaryappcolor,
                            borderRadius: BorderRadius.circular(50.r)),
                        child: CText(
                          fontSize: 10,
                          text: 'A1',
                          alignText: TextAlign.center,
                          color: AppColors.whitesoftColor,
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Row(
                        children: [
                          Image.asset(AppImaes.francais),
                          SizedBox(
                            width: 6.w,
                          ),
                          CText(
                            text: 'Français',
                            fontSize: 14,
                            color: AppColors.headingcolor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  // heef
                  Row(
                    children: [
                      CText(
                        text: 'Beginner',
                        fontSize: 14,
                        color: AppColors.primaryappcolor,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            size: 35,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: <Widget>[
                          Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryappcolor,
                                  borderRadius: BorderRadius.circular(50.r)),
                              child: const Icon(
                                Icons.done,
                                size: 20,
                              )),
                        ],
                      ),
                      
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 190.h,
              ),
              PrimaryButton(
                  text: 'Next',
                  onTap: () {
                    Get.to( LoginScreen());
                  }),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
