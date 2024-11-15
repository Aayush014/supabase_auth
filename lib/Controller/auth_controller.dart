import 'package:get/get.dart';
import '../Auth/auth_service.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  RxnString currentUserEmail = RxnString();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    _initAuthListener();
  }

  void _initAuthListener() {
    AuthService.instance.authStateChanges.listen((data) {
      final session = data.session;
      currentUserEmail.value = session?.user?.email;
      if (session == null) {
        Get.offAllNamed('/login');
      } else {
        Get.offAllNamed('/profile');
      }
    });
  }

  Future<void> signIn() async {
    isLoading.value = true;
    try {
      await AuthService.instance.signIn(emailController.text.trim(), passwordController.text.trim());
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signUp() async {
    isLoading.value = true;
    try {
      await AuthService.instance.signUp(emailController.text.trim(), passwordController.text.trim());
      Get.back();
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signOut() async {
    await AuthService.instance.signOut();
  }
}
