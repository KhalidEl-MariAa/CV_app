import 'package:cv_app/core/utils/fonts.dart';
import 'package:flutter/material.dart';

class CreateResumeView extends StatefulWidget {
  const CreateResumeView({super.key});

  @override
  State<CreateResumeView> createState() => _CreateResumeViewState();
}

class _CreateResumeViewState extends State<CreateResumeView> {
 final  GlobalKey<FormState> _globalKey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: _globalKey,
      child: Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Icon(Icons.person_2_sharp,size: 50,color: Colors.black.withOpacity(0.64),),const SizedBox(width: 10,)
                  ,Text('Personal details:',style: titlefont.copyWith(fontSize: 20,textBaseline: TextBaseline.alphabetic,fontWeight: FontWeight.bold),)
                  ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 13),
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Can't be empty";
                        }
                        return null;
                      },
                      style:bodyfont ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                        hintText: 'Full name',
                        hintStyle: bodyfont,
                        prefixIcon: const Icon(Icons.draw_outlined,size: 30,)
                        
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                         if(value!.isEmpty){
                          return "Can't be empty";
                        }
                        return null;
                      },
                      style:bodyfont ,
                      decoration: InputDecoration(
                        prefixIcon:const Icon(Icons.phone,size: 30,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                        hintText: 'Phone Number',
                        hintStyle: bodyfont,
                        
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 13),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Can't be empty";
                        }
                        return null;
                      },
                      style:bodyfont ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                        hintText: 'Email',
                        hintStyle: bodyfont,
                        prefixIcon: const Icon(Icons.email,size: 30,)
                        
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: TextFormField(
                      validator: (value) {
                         if(value!.isEmpty){
                          return "Can't be empty";
                        }
                        return null;
                      },
                      style:bodyfont ,
                      decoration: InputDecoration(
                        prefixIcon:const Icon(Icons.home,size: 30,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                        hintText: 'Address',
                        hintStyle: bodyfont,
                        
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 13),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Can't be empty";
                        }
                        return null;
                      },
                      style:bodyfont ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                        hintText: 'Learning degree',
                        hintStyle: bodyfont,
                        prefixIcon: const Icon(Icons.email,size: 30,)
                        
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    
  }
}