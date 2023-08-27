import 'package:cv_app/features/homeSreen/presentation/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/const.dart';

class AddSkillsView extends StatefulWidget {
  const AddSkillsView({super.key});

  @override
  State<AddSkillsView> createState() => _AddSkillsViewState();
}

class _AddSkillsViewState extends State<AddSkillsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.only(bottom:20),
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    separatorBuilder: (context, index) => const SizedBox(height: 20,),
                         shrinkWrap: true,
                         physics: const NeverScrollableScrollPhysics(),
                         itemCount: skillNum,
                         itemBuilder: (context, index) => CustomTextField(
                          validateString:"Can't be empty" ,
                           hintText: 'skills', 
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
                            child: const Icon(Icons.disabled_by_default_outlined,size: 28,),
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
    )
    );
    
                
  }
}