import 'package:cv_app/core/utils/constants/const.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/alert_Dialog.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/custom_Addfield_listview.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';


class AddWorkExperienceView extends StatefulWidget {
  const AddWorkExperienceView({super.key});

  @override
  State<AddWorkExperienceView> createState() => _AddWorkExperienceViewState();
}

class _AddWorkExperienceViewState extends State<AddWorkExperienceView> {
  bool z= false;
  int workNum=1;
  var workexp = [];
  

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
        secondChild: AddFieldListview(
          validate: z,
          datalist: workexp,
          onFieldSubmitted: (p0) {
            
           if(workexp.contains(p0)){
              showDialog(context: context,
               builder:(context) =>  const CustomAlert(title: '',content: 'This item is already saved..',),);
           }
           else{
            workexp.add(p0);
            data.workexp=workexp;
           }
          },
          num: workNum,
           textFieldHint: 'Press submit after typing"',
           labelText: 'ex: Position in "Company name "',
            suffixIcon: const Icon(Icons.add,size: 30,)),
        duration: const Duration(milliseconds: 700),
         crossFadeState: z? CrossFadeState.showSecond:CrossFadeState.showFirst
       )
   ,const SizedBox(height: 10,)],
    );
  }
}

