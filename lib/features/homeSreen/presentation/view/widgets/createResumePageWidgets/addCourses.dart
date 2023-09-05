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
                    onchange: (p0) {
                      data.college= p0;
                    },
                      controller: collegCont,
                      validateString: "Can't be empty",
                       hintText: 'College', 
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.business,size: 30,),
                       inputType: TextInputType.text,)
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 17),
                    child: CustomTextField(
                      onchange: (p0) {
                        data.university=p0;
                      },
                      controller: universityCont,
                      validateString: "Can't be empty",
                       hintText: 'University', 
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.school_outlined,size: 30,),
                       inputType: TextInputType.text,)
                  ),


                      AnimatedCrossFade(
     firstChild:AddFieldListview(
      datalist: courses,
      onFieldSubmitted: (p0) {
            
            courses.add(p0);
            data.courses=courses;
          },
      num: coursesNum, 
      textFieldHint: 'Courses',
       suffixIcon: const Icon(Icons.add,size: 30,)),
     secondChild: const SizedBox(),
     crossFadeState: CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 700 ))
                    ],
                  )
    );
    
  }
}