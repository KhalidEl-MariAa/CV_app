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
       
      

    ),
     PageViewModel(
      body: 'No problem, with us you can create it easily and free...so you can apply to the job you want ,Only follow the flow',
      title: "doesn't  have exprience to create your CV?",
      image: const Image(image: AssetImage('lib/core/assets/images/cv.jpg'))

      
      

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
          done: ElevatedButton(child: Text('Done'),onPressed: (){},),
          showNextButton: false,
          bodyPadding: EdgeInsets.symmetric(horizontal:20,vertical: 50)
          
        
          ),
        ),
      ),
    );
  }
}