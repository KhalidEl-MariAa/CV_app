import 'package:flutter/material.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import '../../../../../../core/utils/constants/const.dart';
import '../../../../../../core/utils/pagesName.dart';

class ChooseLanguagesView extends StatelessWidget {
  const ChooseLanguagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Icon(Icons.language_rounded,size: 50,color: Colors.black.withOpacity(0.64),),const SizedBox(width: 10,)
                  ,Text('Languages :',style: titlefont.copyWith(fontSize: 20,textBaseline: TextBaseline.alphabetic,fontWeight: FontWeight.bold),)
                  ],
                  ),
                    
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical:20 , horizontal:13),
                       child: MultiSelectDialogField(
                        chipDisplay: MultiSelectChipDisplay(
                        textStyle: bodyfont),
                        backgroundColor: Colors.white,
                        buttonText:Text('Choose your languages',style: bodyfont, ),
                        validator: (value) {
                        if(value!.isEmpty){
                          return 'Please choose language';
                        }
                        return null;
                        },
                        decoration: BoxDecoration(
                     
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(35)
                        ),
                        items: PagesNames.languages,
                         onConfirm: (p0) {
                          data.languages=p0;
                        },),
                     )],
    );
  }
}