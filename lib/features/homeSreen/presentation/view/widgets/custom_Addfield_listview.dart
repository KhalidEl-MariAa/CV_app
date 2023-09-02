import 'package:cv_app/features/homeSreen/presentation/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/const.dart';

// ignore: must_be_immutable
class AddFieldListview extends StatefulWidget {
   AddFieldListview({super.key,required this.num,required this.textFieldHint,required this.suffixIcon});
 int num;
 String textFieldHint;
 Icon suffixIcon;
 TextEditingController addFieldListviewontroller= TextEditingController();
  @override
  State<AddFieldListview> createState() => _AddFieldListviewState();
}

class _AddFieldListviewState extends State<AddFieldListview> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        separatorBuilder: (context, index) => const SizedBox(height: 20,),
                             shrinkWrap: true,
                             physics: const NeverScrollableScrollPhysics(),
                             itemCount:widget.num,
                             itemBuilder: (context, index) => CustomTextField(
                              validateString:"Can't be empty" ,
                               hintText: widget.textFieldHint, 
                               hintstyle: bodyfont,
                               suffixIcon:widget.num==1? 
                                GestureDetector(
                                child:  widget.suffixIcon,
                                onTap: (){
                                 setState(() {
                                  widget.num++;
                                  widget.addFieldListviewontroller.clear();
                                  widget.addFieldListviewontroller.addListener(() { });
                                   
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
                                  widget.num--;
                                 });
                                },),

                                 GestureDetector(
                                child: widget.suffixIcon,
                                onTap: (){
                                 setState(() {
                                  widget.num++;
                                 });
                                },
                                ),])
    )
    );
  }
}