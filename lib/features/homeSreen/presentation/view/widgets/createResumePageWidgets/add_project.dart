import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/alert_Dialog.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/custom_Addfield_listview.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import '../../../../../../core/utils/constants/const.dart';

class AddProjectView extends StatefulWidget {
  const AddProjectView({super.key});

  @override
  State<AddProjectView> createState() => _AddProjectViewState();
}
int projnum=1;
bool z=false;
var projects = [];
class _AddProjectViewState extends State<AddProjectView> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Padding(
           padding: const EdgeInsets.only(left: 20,right: 20,bottom: 25),
           child: Row(
         
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Have Projects done ?',style: bodyfont.copyWith(fontWeight: FontWeight.bold),),
              
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
        firstChild: Text('No problem you still have time to start!',style: bodyfont,),
        secondChild: AddFieldListview(
          validate: z,
          datalist: projects,
          onFieldSubmitted: (p0) {
            
           if(projects.contains(p0)){
              showDialog(context: context,
               builder:(context) =>  const CustomAlert(title: '',content: 'This item is already saved..',),);
           }
           else{
            projects.add(p0);
            data.projects=projects;
           }
          },
          num: projnum,
           textFieldHint: 'Press Done after typing',
           labelText: 'Project Name',
            suffixIcon: const Icon(Icons.add,size: 30,)),
        duration: const Duration(milliseconds: 700),
         crossFadeState: z? CrossFadeState.showSecond:CrossFadeState.showFirst
       )
   ,const SizedBox(height: 10,)],
    );
  }
}