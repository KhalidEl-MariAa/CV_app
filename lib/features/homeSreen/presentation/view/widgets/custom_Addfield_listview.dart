import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/alert_Dialog.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/const.dart';

// ignore: must_be_immutable
class AddFieldListview extends StatefulWidget {
   AddFieldListview({super.key,
   required this.num,
   required this.textFieldHint,
   required this.suffixIcon,
   required this.datalist,
   this.onchange,
   this.onFieldSubmitted,
   this.validate,
   this.labelText
   });
 int num;
 String textFieldHint;
 Icon suffixIcon;
 TextEditingController addFieldListviewontroller= TextEditingController();
 void Function(String)? onchange;
 void Function(String)? onFieldSubmitted;
 List datalist;
 bool? validate= true;
 String? labelText;
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
                              inputType: TextInputType.text,
                              validate:widget.validate ,
                              onFieldSubmitted: widget.onFieldSubmitted,
                              onchange: widget.onchange,
                              validateString:"Can't be empty" ,
                               hintText: widget.textFieldHint, 
                               hintstyle: bodyfont,
                               labelText: widget.labelText,
                               suffixIcon:widget.num==1? 
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    GestureDetector(
                                      onTap:  () {
                                         try {
                                   widget.datalist.removeLast();
                                 } catch (e) {
                                   showDialog(
                                    context: context,
                                     builder:(context) => const CustomAlert(title: 'Notice !', content: 'This list is already empty'),
                                   );
                                 }
                                      },
                                      child: const Icon(Icons.delete,size: 30,),
                                    ),
                                    GestureDetector(
                                    child:  widget.suffixIcon,
                                    onTap: (){
                                     setState(() {
                                      widget.num++;
                                      widget.addFieldListviewontroller.clear();
                                      widget.addFieldListviewontroller.addListener(() { });
                                       
                                     });
                                     
                                    },
                                    ),
                                  ],
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
                                 try {
                                   widget.datalist.removeLast();
                                 } catch (e) {
                                   showDialog(
                                    context: context,
                                     builder:(context) => const CustomAlert(title: 'Notice !', content: 'This list is already empty'),
                                   );
                                 }
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