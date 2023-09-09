import 'package:cv_app/features/homeSreen/presentation/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/const.dart';

// ignore: must_be_immutable
class PersonalDetailsView extends StatefulWidget {
   const PersonalDetailsView({super.key,});

  @override
  State<PersonalDetailsView> createState() => _PersonalDetailsViewState();
}
final headlineCont = TextEditingController();

final fullnameCont = TextEditingController();

final phoneCont = TextEditingController();

final emailCont = TextEditingController();

final addressCont = TextEditingController();

final cityCont = TextEditingController();

final learningDegreeCont = TextEditingController();

final summaryCont = TextEditingController();
class _PersonalDetailsViewState extends State<PersonalDetailsView> {


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
                      validate: true,
                      controller: headlineCont,
                      onchange: (x){
                        data.headline=x;
                      },
                      validateString: "Can't be empty",
                       hintText: 'Headline ( Your job(s) name(s) )', 
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.title,size: 30,),
                       inputType: TextInputType.text,)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 27,horizontal: 13),
                    child: CustomTextField(
                      validate: true,
                      controller: fullnameCont,
                      onchange: (p0) {
                        data.fullname=p0;
                      },
                      validateString: "Can't be empty",
                       hintText: 'Full Name',
                        hintstyle: bodyfont,
                        prefixIcon: const Icon(Icons.draw_outlined,size: 30,), )
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: CustomTextField(
                      validate: true,
                      controller: phoneCont,
                      onchange: (p0) {
                        data.phoneNumber=p0;
                      },
                      validateString: "Can't be empty",
                       hintText: 'Phone Number', 
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.phone,size: 30,),
                       inputType: TextInputType.phone,)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 27,horizontal: 13),
                    child: CustomTextField(
                      validate: true,
                      controller: emailCont,
                      onchange: (p0) {
                        data.email=p0;
                        },
                      validateString: "Can't be empty",
                       hintText: 'Email',
                        hintstyle: bodyfont,
                        prefixIcon: const Icon(Icons.email,size: 30,),)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: CustomTextField(
                      validate: true,
                      controller: addressCont,
                      onchange: (p0) {
                        data.address=p0;
                      },
                      validateString: "Can't be empty",
                       hintText: 'Address',
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.home,size: 30,),)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 27,horizontal: 13),
                    child: CustomTextField(
                      validate: true,
                      controller: cityCont,
                      onchange: (p0) {
                        data.city=p0;
                      },
                      validateString:"Can't be empty",
                       hintText: 'City', 
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.location_on,size: 30,),)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: CustomTextField(
                      validate: true,
                      controller: learningDegreeCont,
                      onchange: (p0) {
                        data.learningDegree=p0;
                      },
                      validateString: "Can't be empty",
                      hintText: 'Learning degree (Fresh graduate - Graduate since 2021)',
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.school,size: 30,),)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:27,left: 13,right: 13),
                    child: CustomTextField(
                      validate: true,
                      controller: summaryCont,
                      onchange: (p0) {
                        data.summary=p0;
                      },
                      validateString: "Can't be empty",
                       hintText: 'Summary about yourself', 
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.summarize,size: 30,),
                       inputType: TextInputType.text,)
                  ),

      ],
    );
  }
}