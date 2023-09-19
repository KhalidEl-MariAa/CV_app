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
                      maxlines: 1,
                      validate: true,
                      controller: headlineCont,
                      onchange: (x){
                        data.headline=x;
                      },
                      validateString: "Can't be empty",
                       hintText: 'Your job name ', 
                       labelText: 'Headline',

                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.title,size: 30,),
                       inputType: TextInputType.text,)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 27,horizontal: 13),
                    child: CustomTextField(
                      maxlines: 1,
                      validate: true,
                      controller: fullnameCont,
                      onchange: (p0) {
                        data.fullname=p0;
                      },
                      validateString: "Can't be empty",
                      hintText: '',
                       labelText: 'Full Name',
                        hintstyle: bodyfont,
                        prefixIcon: const Icon(Icons.draw_outlined,size: 30,), )
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: CustomTextField(
                      maxlines: 1,
                      validate: true,
                      controller: phoneCont,
                      onchange: (p0) {
                        data.phoneNumber=p0;
                      },
                      validateString: "Can't be empty",
                       hintText: '', 
                       labelText: 'Phone Number',
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.phone,size: 30,),
                       inputType: TextInputType.phone,)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 27,horizontal: 13),
                    child: CustomTextField(
                      maxlines: 1,
                      validate: true,
                      controller: emailCont,
                      onchange: (p0) {
                        data.email=p0;
                        },
                      validateString: "Can't be empty",
                       hintText: '',
                       labelText: 'Email',
                        hintstyle: bodyfont,
                        prefixIcon: const Icon(Icons.email,size: 30,),)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: CustomTextField(
                      maxlines: 1,
                      validate: true,
                      controller: addressCont,
                      onchange: (p0) {
                        data.nationality=p0;
                      },
                      validateString: "Can't be empty",
                       hintText: '',
                       labelText: 'Nationality',
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.home,size: 30,),)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 27,horizontal: 13),
                    child: CustomTextField(
                      maxlines: 1,
                      validate: true,
                      controller: cityCont,
                      onchange: (p0) {
                        
                        data.city=p0;
                      },
                      validateString:"Can't be empty",
                       hintText: '',
                       labelText: 'City', 
                       hintstyle: bodyfont,
                       prefixIcon: const Icon(Icons.location_on,size: 30,),)
                  ),

      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Expanded(
                      child: CustomTextField(
                        maxlines: null,
                        validate: true,
                        controller: learningDegreeCont,
                        inputType: TextInputType.text,
                        onchange: (p0) {
                          data.learningDegree=p0;
                        },
                        validateString: "Can't be empty",
                        hintText: 'Student - Fresh graduate - Graduate since..',
                        labelText:'Learning degree' ,
                         hintstyle: bodyfont,
                         prefixIcon: const Icon(Icons.school,size: 30,),),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:27,left: 13,right: 13),
                    child: Expanded(
                      child: CustomTextField(
                        maxlines: null,
                        validate: true,
                        controller: summaryCont,
                        onchange: (p0) {
                          data.summary=p0;
                        },
                        validateString: "Can't be empty",
                         hintText: 'Talk about yourself', 
                         labelText: 'Summary',
                         hintstyle: bodyfont,
                         prefixIcon: const Icon(Icons.summarize,size: 30,),
                         inputType: TextInputType.text,),
                    )
                  ),

      ],
    );
  }
}