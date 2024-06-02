import 'package:career_center/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// sfgdfg
// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  bool? leadingIcon;
  CustomAppBar({
    super.key,
    required this.text,
    this.leadingIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(120.h),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          
          leadingWidth: 24.w,
          leading: leadingIcon == true
              ? GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      // color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.primarybackColor,
                      size: 30.w,
                    ),
                  ),
                )
              : const SizedBox(),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 24.sp,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            ),
          ),
          centerTitle: true,
          elevation: 0,
          actions: [],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(81.h);
}