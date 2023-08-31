import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/addCourses.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/addImage.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/addSkills.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/add_Workexp.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/add_project.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/chooseLanguage.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/personalDetails.dart';
import 'package:flutter/material.dart';

class CreateResumeView extends StatefulWidget {
  const CreateResumeView({super.key});

  @override
  State<CreateResumeView> createState() => _CreateResumeViewState();
}

class _CreateResumeViewState extends State<CreateResumeView> {
 final  GlobalKey<FormState> _globalKey =GlobalKey();
 bool z =  false;
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
                         const AddCourses(),
                      Divider(color: Colors.black.withOpacity(0.5),thickness: 0.7,),
                     const SizedBox(height: 20,),
                         const AddSkillsView(),
                     Divider(color: Colors.black.withOpacity(0.5),thickness: 0.7,),
                     const SizedBox(height: 20,),
                           const AddWorkExperienceView(),
                     Divider(color: Colors.black.withOpacity(0.5),thickness: 0.7,),
                     const SizedBox(height: 20,),
                          const AddProjectView(),
                      Divider(color: Colors.black.withOpacity(0.5),thickness: 0.7,),
                     const SizedBox(height: 20,),
                         const ChooseLanguagesView(),
                     Divider(color: Colors.black.withOpacity(0.5),thickness: 0.7,),
                     const SizedBox(height: 20,),
                          const AddImageView()

                     
                     
                     
                            ],
                 ),
               ),
              ]
        ),
      ),
    );
    
  }
}