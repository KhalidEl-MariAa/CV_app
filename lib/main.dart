import 'package:cv_app/core/utils/pagesName.dart';
import 'package:cv_app/features/loadingScreen/presentation/view/loadinScreenView.dart';
import 'package:cv_app/features/welcomeScreem/presentation/view/welcomeScreenView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      routes: {
        PagesNames.welcomeScreenName:(context) => const WelcomeScreen(),
        PagesNames.loadingScreen:(context) => const LoadingScreenView()
      },
      initialRoute: PagesNames.welcomeScreenName,
    );
}
}
