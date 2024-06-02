import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
final TextEditingController pinController = TextEditingController();
final TextEditingController pinPasswordController = TextEditingController();
  final TextEditingController payController=TextEditingController();
  final isLoading = false.obs;
  final rememberCheck = false.obs;

}