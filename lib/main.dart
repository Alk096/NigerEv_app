import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Niger event',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: SplashScreen(),
      //home: const Onboarding1Screen(),
      //home: const SingInScreen(),
      //home: SingUpScreen(),
      //home: VerificationScreen(),
      //home: RessetPassordSreen(),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
