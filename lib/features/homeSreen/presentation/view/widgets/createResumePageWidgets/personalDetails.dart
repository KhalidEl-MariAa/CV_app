import 'package:cv_app/features/homeSreen/presentation/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/const.dart';

class PersonalDetailsView extends StatelessWidget {
  const PersonalDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 20,),

        Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Icon(Icons.person_2_sharp,size: 50,color: Colors.black.withOpacity(0.64),),const SizedBox(width: 3,)
                  ,Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Text('Personal details :',style: titlefont.copyWith(fontSize: 20,textBaseline: TextBaseline.alphabetic,fontWeight: FontWeight.bold),),
                  )
                  ],
                  ),
                  
      Padding(
                    padding: const EdgeInsets.only(top:27,left: 13,right: 13),
                    child: CustomTextField(
                      validateString: "Can't be empty",
                       hintText: 'Headline ( Your job(s) name(s) )', 
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.title,size: 30,),
                       inputType: TextInputType.none,)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 27,horizontal: 13),
                    child: CustomTextField(
                      validateString: "Can't be empty",
                       hintText: 'Full Name',
                        hintstyle: bodyfont,
                        prefixIcon: const Icon(Icons.draw_outlined,size: 30,), )
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: CustomTextField(
                      validateString: "Can't be empty",
                       hintText: 'Phone Number', 
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.phone,size: 30,),
                       inputType: TextInputType.phone,)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 27,horizontal: 13),
                    child: CustomTextField(
                      validateString: "Can't be empty",
                       hintText: 'Email',
                        hintstyle: bodyfont,
                        prefixIcon: const Icon(Icons.email,size: 30,),)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: CustomTextField(
                      validateString: "Can't be empty",
                       hintText: 'Address',
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.home,size: 30,),)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 27,horizontal: 13),
                    child: CustomTextField(
                      validateString:"Can't be empty",
                       hintText: 'City', 
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.location_on,size: 30,),)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: CustomTextField(
                      validateString: "Can't be empty",
                      hintText: 'Learning degree (Fresh graduate - Graduate since 2021)',
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.school,size: 30,),)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:27,left: 13,right: 13),
                    child: CustomTextField(
                      validateString: "Can't be empty",
                       hintText: 'Summary about yourself', 
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.summarize,size: 30,),
                       inputType: TextInputType.none,)
                  ),

      ],
    );
  }
}