// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:cv_app/core/utils/constants/const.dart';
import 'package:cv_app/core/utils/pagesName.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/addCourses.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/addImage.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/addSkills.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/add_Workexp.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/add_project.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/alert_Dialog.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/chooseLanguage.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/personalDetails.dart';
import 'package:cv_app/features/homeSreen/presentation/view_model/cubit/add_resume_data_cubit.dart';
import 'package:cv_app/features/pdfScreen/data/pdf_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateResumeView extends StatefulWidget {
  const CreateResumeView({super.key});

  @override
  State<CreateResumeView> createState() => _CreateResumeViewState();
}

class _CreateResumeViewState extends State<CreateResumeView> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  bool z = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      child: BlocListener<AddResumeDataCubit, AddResumeDataState>(
        listener: (context, state) async  {
          if(state is AddResumeDataSuccess){
            
              File file = await PdfView.createPDF();
              
                Navigator.pushNamed(context, PagesNames.pdfScreen,arguments: file);
              
              
               
          }
         else if (state is AddResumeDataFailure) {
            print('fail: ${state.error}');
          }
          
        },
        child: Container(
            color: Colors.white,
            child: CustomScrollView(slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const PersonalDetailsView(),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      thickness: 0.7,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AddCourses(),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      thickness: 0.7,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AddSkillsView(),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      thickness: 0.7,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AddWorkExperienceView(),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      thickness: 0.7,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AddProjectView(),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      thickness: 0.7,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ChooseLanguagesView(),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      thickness: 0.7,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AddImageView(),
                    ElevatedButton(
                        onPressed: () async {
                          if(data.imageFile.lengthInBytes==0){
                            showDialog(context: context,
                             builder: (context) => 
                             const CustomAlert(title: 'Warning', content: "Add a photo...it can't be empty"),);
                          }
                          else{
                          if (_globalKey.currentState!.validate()){
                            
                            await BlocProvider.of<AddResumeDataCubit>(context)
                                .addDataToHive(data);
                                
                           
                          }}
                        },
                        child: Text(
                          'generate',
                          style: bodyfont,
                        ))
                  ],
                ),
              ),
            ])),
      ),
    );
  }

  
}
