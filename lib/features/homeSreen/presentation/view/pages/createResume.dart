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
                   const ChooseLanguagesView()
                           
                  ],
                ),]
              ),
            
           
        ),
      ),
    );
    
  }
}