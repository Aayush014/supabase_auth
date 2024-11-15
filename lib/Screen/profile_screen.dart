import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/auth_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => authController.signOut(),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Obx(() {
          final email = authController.currentUserEmail.value;
          return Text(email != null ? "Logged in as: $email" : "Loading...");
        }),
      ),
    );
  }
}
