import 'package:cv_app/core/utils/fonts.dart';
import 'package:cv_app/core/utils/pagesName.dart';
import 'package:cv_app/features/homeSreen/presentation/view/widgets/createResumePageWidgets/personalDetails.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

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
        child: NestedScrollView(
          
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {  
              return [const SliverAppBar(
                collapsedHeight: 80,
                pinned: true,
                flexibleSpace: Center(child: Text('heloo')),
                backgroundColor: Colors.white,
                foregroundColor: Colors.white,
                
                )];
            },
             
              body:  ListView(
                children: [Column(
                  children: [
                    const PersonalDetailsView(),
                    const SizedBox(height: 20,),
                    Divider(color: Colors.black.withOpacity(0.5),thickness: 0.7,),
                   const SizedBox(height: 20,),
                    Row(
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
                          
                        },),
                     )
                           
                  ],
                ),]
              ),
            
           
        ),
      ),
    );
    
  }
}