import 'package:cv_app/core/utils/constants/const.dart';
import 'package:cv_app/core/utils/pagesName.dart';
import 'package:cv_app/features/contactUsDetailsScreen/presentation/view/contactUsDetailsScreen.dart';
import 'package:cv_app/features/homeSreen/data/models/resume_Model.dart';
import 'package:cv_app/features/homeSreen/presentation/view/homeScreenView.dart';
import 'package:cv_app/features/loadingScreen/presentation/view/loadinScreenView.dart';
import 'package:cv_app/features/pdfScreen/presentation/view/pdf_Screen.dart';
import 'package:cv_app/features/welcomeScreem/presentation/view/welcomeScreenView.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ResumeModelAdapter());
  await Hive.openBox<ResumeModel>(kBoxName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        PagesNames.welcomeScreenName:(context) => const WelcomeScreen(),
        PagesNames.loadingScreenName:(context) => const LoadingScreenView(),
        PagesNames.homeScreenName:(context) => const HomeScreenView(),
        PagesNames.contactUsDetails:(context) => const ContactUsDetailsView(),
        PagesNames.pdfScreen:(context) => const PDFVieew()
        
      },
      initialRoute: PagesNames.welcomeScreenName,
    );
}
}
