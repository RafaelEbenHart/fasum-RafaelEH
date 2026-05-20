import 'package:fasum_rafaeleh/screens/add_post_screen.dart';
import 'package:fasum_rafaeleh/screens/home_screen.dart';
import 'package:fasum_rafaeleh/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:fasum_rafaeleh/screens/sign_up_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fasum',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const SignInScreen(),
    );
  }
}
