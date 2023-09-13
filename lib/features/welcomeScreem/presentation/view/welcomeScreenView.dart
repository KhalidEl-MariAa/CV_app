
import 'package:cv_app/core/utils/pagesName.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../core/utils/constants/const.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  

  
  @override
  Widget build(BuildContext context) {
    
    List<PageViewModel> pages= [
    PageViewModel(
      body: "Haven't a CV yet?",
      title: 'Welcome...',
      image: const Image(image: AssetImage('assets/images/hello.jpg')),
      decoration: PageDecoration(
        bodyPadding: const EdgeInsets.only(top: 17),
        titleTextStyle: titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.08,letterSpacing: 3,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
        bodyTextStyle: bodyfont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04,letterSpacing: 5.25)) 
    ),
     PageViewModel(
      body: 'No problem, with us you can create it easily and free...so you can apply to the job you want ,Only follow the flow',
      title: "Doesn't  have exprience to create your CV?",
      image: const Image(image: AssetImage('assets/images/cv.jpg')),
      decoration: PageDecoration(
        bodyPadding:const EdgeInsets.only(top: 25),
        titleTextStyle: titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.07,letterSpacing: 3,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
        bodyTextStyle: bodyfont.copyWith(fontSize: MediaQuery.of(context).size.width*0.045) )
    )
  ];

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: IntroductionScreen(
            curve: Curves.bounceIn,
            
            globalBackgroundColor: Colors.white,
          pages: pages,
          onDone: (){
            
          },
          done: ElevatedButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, PagesNames.loadingScreenName);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              textStyle: bodyfont.copyWith(),
              fixedSize: const Size(100, 100),
              
            ),
            child: const Padding(
              padding:  EdgeInsets.only(left:12.0),
              child:  Text('Lets go!',style: TextStyle(color: Colors.white),),
            )
            ,),
          showNextButton: false,
          
          bodyPadding: const EdgeInsets.symmetric(horizontal: 20),
          
        
          ),
        ),
      ),
    );
  }
}