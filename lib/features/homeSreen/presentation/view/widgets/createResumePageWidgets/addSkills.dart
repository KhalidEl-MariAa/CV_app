import 'package:cv_app/features/homeSreen/presentation/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/const.dart';

class AddSkillsView extends StatefulWidget {
  const AddSkillsView({super.key});

  @override
  State<AddSkillsView> createState() => _AddSkillsViewState();
}
int skillNum = 1;

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
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        separatorBuilder: (context, index) => const SizedBox(height: 20,),
                             shrinkWrap: true,
                             physics: const NeverScrollableScrollPhysics(),
                             itemCount: skillNum,
                             itemBuilder: (context, index) => CustomTextField(
                              validateString:"Can't be empty" ,
                               hintText: 'Skills', 
                               hintstyle: bodyfont,
                               suffixIcon: skillNum==1? 
                                GestureDetector(
                                child: const Icon(Icons.add,size: 30,),
                                onTap: (){
                                 setState(() {
                                   skillNum++;
                                   
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
                                   skillNum--;
                                 });
                                },),

                                 GestureDetector(
                                child: const Icon(Icons.add,size: 30,),
                                onTap: (){
                                 setState(() {
                                   skillNum++;
                                 });
                                },
                                ),])
    )
    ),
                    ],
                  )
    );
    
                
  }
}