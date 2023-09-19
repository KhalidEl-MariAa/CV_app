import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/alert_Dialog.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/custom_Addfield_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/const.dart';
import '../customTextField.dart';

class AddCourses extends StatefulWidget {
  const AddCourses({super.key});

  @override
  State<AddCourses> createState() => _AddCoursesState();
}
int coursesNum=1;
final collegCont = TextEditingController();
final universityCont = TextEditingController();
var courses = [];
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
                    child: Text('Education :',style: titlefont.copyWith(fontSize: 20,textBaseline: TextBaseline.alphabetic,fontWeight: FontWeight.bold),),
                  )
                  ],
                  ),
                 
                 Padding(
                    padding: const EdgeInsets.only(top:27,left: 13,right: 13),
                    child: CustomTextField(
                      maxlines: null,
                      validate: true,
                    onchange: (p0) {
                      data.college= p0;
                    },
                      controller: collegCont,
                      validateString: "Can't be empty",
                       hintText: '', 
                       labelText: 'College',
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.business,size: 30,),
                       inputType: TextInputType.text,)
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 17),
                    child: Expanded(
                      child: CustomTextField(
                        maxlines: null,
                        validate: true,
                        onchange: (p0) {
                          data.university=p0;
                        },
                        controller: universityCont,
                        validateString: "Can't be empty",
                         hintText: '',
                         labelText: 'University', 
                         hintstyle: bodyfont,
                         prefixIcon: const Icon(Icons.school_outlined,size: 30,),
                         inputType: TextInputType.text,),
                    )
                  ),


                      AnimatedCrossFade(
     firstChild:AddFieldListview(
      
      validate: true,
      datalist: courses,
      onFieldSubmitted: (p0) {
            if(courses.contains(p0)){
             showDialog(
              context: context,
               builder:(context) =>  const CustomAlert(title: '',content: 'This item is already saved..',), );
           }
           else{
            courses.add(p0);
            data.courses=courses;
           }

          },
      num: coursesNum, 
      textFieldHint: 'Press done button of keyboard after typing to add',
      labelText: 'Courses',
       suffixIcon: const Icon(Icons.add,size: 30,)),
     secondChild: const SizedBox(),
     crossFadeState: CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 700 ))
                    ],
                  )
    );
    
  }

  
}