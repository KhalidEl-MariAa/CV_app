import 'package:cv_app/core/utils/fonts.dart';
import 'package:flutter/material.dart';


class InstructionsView extends StatefulWidget {
   InstructionsView({super.key});

  @override
  State<InstructionsView> createState() => _InstructionsViewState();
}

class _InstructionsViewState extends State<InstructionsView> {
  

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled) {
      return [SliverAppBar(
        collapsedHeight: MediaQuery.of(context).size.height*0.8,
        flexibleSpace:ListView(
          
          
          children: [Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 10),
                child: Text('Please dont skip this to have more chances to be chosen for the job you are here to create resume for it...',
                style:titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.05,fontWeight: FontWeight.bold) ,
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text('How Companies choose appliers for interviews?',style: titlefont.copyWith(fontWeight: FontWeight.bold),),
              ),
                Image.asset('lib/core/assets/images/apply2.jpg',width:MediaQuery.of(context).size.width*0.7 ,),
              Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 20),
                child: Text(
                      '- You must Know that you are one of thousands who apply to a Job Advertisement but you realise that the only are invited to the interview are between 50-100 applier.. Did you ask yourself before how they choose them and why?!',
                      style: bodyfont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04),),
              ), Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 20),
                child: Text(
                      '- Each company builds an application called ATS(Application Tracking System) , this application looks like a filter as it filters all resumes it recieved by giving each resume a specific score and deal with the resume according to its score (accepted for interview - rejected). ',
                      style: bodyfont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 20),
                child: Text(
                      '- Each resume take a score according to conditions the company put as they put also a specific score if your resume under this score your resume will be rejected. ',
                      style: bodyfont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04),),
              )
            ],
          ),
      ]) ,
      )];
    }, body: Container(color: Colors.red,)) ;
  }
}