import 'package:flutter/material.dart';


import '../../../../../../core/utils/constants/const.dart';

class InstructionsViewSecondHalf extends StatelessWidget {
  const InstructionsViewSecondHalf
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(
      gradient: LinearGradient(colors: [Colors.blueGrey,Colors.grey])
    ),
    child: ListView(
         physics: const NeverScrollableScrollPhysics(),
      children:[ Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 10),
                    child: Text('Instructions to have a high ATS score ',
                    style:titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.05,fontWeight: FontWeight.bold) ,
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 12),
                    child: Text('- As you know having high score meaning you are qualified for interview',
                    style:titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold) ,
                    ),
                  ),
                  Image.asset('assets/images/interview.png',width:MediaQuery.of(context).size.width*0.7 ,),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 15),
                    child: Text('To achieve interview please follow these instructions : ',
                    style:titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.05,fontWeight: FontWeight.bold) ,
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 12),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('- Read the job description very well .',
                      style:titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold) ,
                      ),
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 12),
                    child: Text('- Make sure you understand the requirements',
                    style:titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold) ,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 12),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('- Analyze skills you need for job .',
                      style:titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold) ,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 12),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('- After analyzing , try to write in your resume words from the job advertisment .',
                      style:titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold) ,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 12),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('- Write the skills as it required or very close to them .',
                      style:titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold) ,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 12),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('- Write strong words about communication skills and self confidence as (iam a leader - can work with team - my team as family - love working under pressure) .',
                      style:titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold) ,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('- Avoid lying about yourself .',
                      style:titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold) ,
                      ),
                    ),
                  ),
                  
                  

        ],
      ),
    ]),
    );
  }
}