import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/chooseLanguage.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/personalDetails.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/const.dart';

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
           
               slivers:[
                SliverToBoxAdapter(
                 child: Column(
                 
                   children: [
                     const PersonalDetailsView(),
                     const SizedBox(height: 20,),
                     Divider(color: Colors.black.withOpacity(0.5),thickness: 0.7,),
                    const SizedBox(height: 20,),
                    const ChooseLanguagesView(),
                     Divider(color: Colors.black.withOpacity(0.5),thickness: 0.7,),
                     const SizedBox(height: 20,)
                     
                            ],
                 ),
               ),
               SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom:20),
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    separatorBuilder: (context, index) => const SizedBox(height: 20,),
                         shrinkWrap: true,
                         physics: const NeverScrollableScrollPhysics(),
                         itemCount: 1,
                         itemBuilder: (context, index) => TextFormField(
                         validator: (value) {
                           if(value!.isEmpty){
                             return "Can't be empty";
                           }
                           return null;
                         },
                         style:bodyfont ,
                         decoration: InputDecoration(
                           border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                           hintText: 'Skill',
                           hintStyle: bodyfont,
                           suffixIcon: GestureDetector(
                            onTap: (){
                             
                            },
                            child: const Icon(Icons.add,size: 30,))
                           
                           
                         ),
                       ),),
                ),
                    
                    
               )]
        ),
      ),
    );
    
  }
}