import 'package:cv_app/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<PageViewModel> pages= [
    PageViewModel(
      body: 'Time To have CV',
      title: 'Welcome...',
      image: const Image(image: AssetImage('lib/core/assets/images/hello.jpg')),
      decoration: PageDecoration(

        titleTextStyle: titlefont.copyWith(fontSize: 30,letterSpacing: 3,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
        bodyTextStyle: bodyfont) 
        
      

    ),
     PageViewModel(
      body: 'No problem, with us you can create it easily and free...so you can apply to the job you want ,Only follow the flow',
      title: "doesn't  have exprience to create your CV?",
      image: const Image(image: AssetImage('lib/core/assets/images/cv.jpg')),
      decoration: PageDecoration(
        titleTextStyle: titlefont.copyWith(fontSize: 30,letterSpacing: 3,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
        bodyTextStyle: bodyfont )

      
      

    )
  ];

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: IntroductionScreen(
            curve: Curves.bounceIn,
            
            globalBackgroundColor: Colors.white,
          pages: pages,
          onDone: (){},
          done: ElevatedButton(child: const Text('Done'),onPressed: (){},),
          showNextButton: false,
          bodyPadding: const EdgeInsets.symmetric(horizontal: 20),
          
        
          ),
        ),
      ),
    );
  }
}