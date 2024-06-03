import 'package:career_center/screens/language_location/my_language.dart';
import 'package:career_center/utils/app_colors.dart';
import 'package:career_center/widgets/custom_appbar.dart';
import 'package:career_center/widgets/custom_text.dart';
import 'package:career_center/widgets/custom_textfield.dart';
import 'package:career_center/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SystemLanguage extends StatefulWidget {
  const SystemLanguage({super.key});

  @override
  State<SystemLanguage> createState() => _SystemLanguageState();
}

class _SystemLanguageState extends State<SystemLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Select Language'),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        child: Column(
          children: [
            CustomTextField(
                    controller: TextEditingController(),
                      textcolor: AppColors.primarybackColor,

          preffixIcon: Icon(Icons.search,size: 30,color:AppColors.searchIconColor ,),

                    hintText: 'Search for a Language',
                    keyboardType: TextInputType.name),
                 Expanded(
                   child: ListView.builder(itemCount: systemtextlist.length,itemBuilder: (context, index) {
                        return Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  const EdgeInsets.only(left: 10.0),
                              child: CText(text: systemtextlist[index], fontSize: 16,color:AppColors.primarybackColor,),
                            ),
                            myDivider(),
                          ],
                        );
                      },),
                 )  ,
                 const SizedBox(height: 70,),
                 PrimaryButton(text: 'Next', onTap: (){
                  Get.to(const MyLanguageScreen());
                 }) 
          ],
        ),
      )
    );
  }
  List systemtextlist=['English','Português','हिंदी','Հայերեն','中国人','Española','Français','Italiana','Русский'];


  Widget myDivider(){
    return 
              Column(
                children: [
                  SizedBox(height: 18.h,),
                  const Divider(
                    color: AppColors.dividercolor,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                ],
              );
  }
 

}
