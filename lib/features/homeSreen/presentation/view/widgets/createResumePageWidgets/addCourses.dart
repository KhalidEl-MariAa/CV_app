import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/const.dart';
import '../customTextField.dart';

class AddCourses extends StatefulWidget {
  const AddCourses({super.key});

  @override
  State<AddCourses> createState() => _AddCoursesState();
}
int coursesNum=1;
class _AddCoursesState extends State<AddCourses> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.only(bottom:20),
                  child: Column(
                    children: [
                       
        Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Icon(Icons.book,size: 50,color: Colors.black.withOpacity(0.64),),const SizedBox(width: 3,)
                  ,Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Text('Courses :',style: titlefont.copyWith(fontSize: 20,textBaseline: TextBaseline.alphabetic,fontWeight: FontWeight.bold),),
                  )
                  ],
                  ),
                 const SizedBox(height: 20,),
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        separatorBuilder: (context, index) => const SizedBox(height: 20,),
                             shrinkWrap: true,
                             physics: const NeverScrollableScrollPhysics(),
                             itemCount: coursesNum,
                             itemBuilder: (context, index) => CustomTextField(
                              validateString:"Can't be empty" ,
                               hintText: 'Courses', 
                               hintstyle: bodyfont,
                               suffixIcon: coursesNum==1? 
                                GestureDetector(
                                child: const Icon(Icons.add,size: 30,),
                                onTap: (){
                                 setState(() {
                                   coursesNum++;
                                   
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
                                   coursesNum--;
                                 });
                                },),

                                 GestureDetector(
                                child: const Icon(Icons.add,size: 30,),
                                onTap: (){
                                 setState(() {
                                   coursesNum++;
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