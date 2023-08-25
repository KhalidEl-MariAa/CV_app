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
          reverse: true,
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {  
              return [const SliverAppBar(
                pinned: true,
                flexibleSpace: Center(child: Text('heloo')),
                backgroundColor: Colors.white,
                foregroundColor: Colors.white,
                
                )];
            },
             
              body: Column(
                children: [
                 const  PersonalDetailsView(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    onPressed: () {
                      if(_globalKey.currentState!.validate()){

                      }
                    
                  }, child: const Text('Done'))
                ],
              ),
            
           
        ),
      ),
    );
    
  }
}