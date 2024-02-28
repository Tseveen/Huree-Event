import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:huree_event_app/views/onboarding_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyBiueJfVg7YBb9EqzVCoNo4KPAPf_4W9XQ",
    appId: "1:266124884429:android:949f22cdda7f3be24dec84",
    messagingSenderId: "266124884429",
    projectId: "huree-b105a",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Image.asset(
            'assets/logos/huree_logo.png',
            height: 100,
          ),
          nextScreen: OnboardingScreen(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.blueAccent,
        ));
  }
}
