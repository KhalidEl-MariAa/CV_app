
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/alert_Dialog.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/custom_Addfield_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/const.dart';

class AddSkillsView extends StatefulWidget {
  const AddSkillsView({super.key});

  @override
  State<AddSkillsView> createState() => _AddSkillsViewState();
}
int skillNum = 1;
var skills = [];

class _AddSkillsViewState extends State<AddSkillsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.only(bottom:20),
                  child: Column(
                    children: [
                       
                        Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Icon(Icons.leaderboard_sharp,size: 50,color: Colors.black.withOpacity(0.64),),const SizedBox(width: 10,)
                  ,Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text('Skills :',style: titlefont.copyWith(fontSize: 20,textBaseline: TextBaseline.alphabetic,fontWeight: FontWeight.bold),),
                  )
                  ],
                  ),
                                 const SizedBox(height: 20,),
                    AnimatedCrossFade(

                      firstChild:  AddFieldListview(
                        validate: true,
                        datalist: skills,
                        onFieldSubmitted: (p0) {
                          if(skills.contains(p0)){
              showDialog(context: context,
               builder:(context) =>  const CustomAlert(title: '',content: 'This item is already saved..',),);
           }
           else{
            skills.add(p0);
            data.skills=skills;
           }

                        },
                        num: skillNum,
                         textFieldHint: 'Press Done button of keyboard after finish typing',
                         labelText: 'Skills',
                          suffixIcon: const Icon(Icons.add,size: 30,)
                          ),
                     secondChild: const SizedBox(),
                      crossFadeState: CrossFadeState.showFirst,
                      duration:const Duration(milliseconds: 700))
                    ],
                  )
    );
    
                
  }
}