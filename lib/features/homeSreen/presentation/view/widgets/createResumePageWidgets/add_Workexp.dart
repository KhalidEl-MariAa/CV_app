import 'package:cv_app/core/utils/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import '../customTextField.dart';

class AddWorkExperienceView extends StatefulWidget {
  const AddWorkExperienceView({super.key});

  @override
  State<AddWorkExperienceView> createState() => _AddWorkExperienceViewState();
}

class _AddWorkExperienceViewState extends State<AddWorkExperienceView> {
  bool z= false;
  int workNum=1;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
           padding: const EdgeInsets.only(left: 20,right: 20,bottom: 25),
           child: Row(
         
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Have Work Experience ?',style: bodyfont.copyWith(fontWeight: FontWeight.bold),),
              
              LiteRollingSwitch(
                animationDuration:const Duration(microseconds: 60 ) ,
                width: 100,
                iconOff: Icons.not_interested,
                colorOn: Colors.greenAccent,
                colorOff: Colors.redAccent,
                textOn: 'Yes',
                textOff: 'No',
                onTap: (){}, onDoubleTap:(){}, onSwipe: (){},
                 onChanged: (p0) {
                  setState(() {
                    z=p0;
                    
                  });
                },)
            ],
                 ),
         ),
      
       AnimatedCrossFade(
        firstChild: Text('No problem the best is coming for you',style: bodyfont,),
        secondChild: ListView.separated(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          separatorBuilder: (context, index) => const SizedBox(height: 20,),
                               shrinkWrap: true,
                               physics: const NeverScrollableScrollPhysics(),
                               itemCount: workNum,
                               itemBuilder: (context, index) => CustomTextField(
                                validateString:"Can't be empty" ,
                                 hintText: 'ex: Position in company name', 
                                 hintstyle: bodyfont,
                                 suffixIcon: workNum==1? 
                                  GestureDetector(
                                  child: const Icon(Icons.add,size: 30,),
                                  onTap: (){
                                   setState(() {
                                     workNum++;
                                     
                                   });
                                   
                                  },
                                  )
                                  :
                                   Row(
                                    
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                     GestureDetector(
                                  child: const Icon(Icons.delete,size: 28,),
                                   onTap: (){
                                   setState(() {
                                     workNum--;
                                   });
                                  },),
       
                                   GestureDetector(
                                  child: const Icon(Icons.add,size: 30,),
                                  onTap: (){
                                   setState(() {
                                     workNum++;
                                   });
                                  },
                                  ),])
           )
           ),
        duration: const Duration(seconds: 1),
         crossFadeState: z? CrossFadeState.showSecond:CrossFadeState.showFirst
       )
   ,const SizedBox(height: 10,)],
    );
  }
}

