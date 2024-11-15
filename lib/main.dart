import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_auth/Controller/auth_controller.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'Screen/login_screen.dart';
import 'Screen/profile_screen.dart';
import 'Screen/sign_up_screen.dart';
import 'auth_gate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "PROJECT URL",
    anonKey: "ANON KEY",
  );
  Get.put(AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const AuthGate()),
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/signup', page: () => const SignUpScreen()),
        GetPage(name: '/profile', page: () => const ProfileScreen()),
      ],
    );
  }
}
