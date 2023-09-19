import 'package:cv_app/features/homeSreen/presentation/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

import '../../../../core/utils/constants/const.dart';

class ContactUsDetailsView extends StatefulWidget {
  const ContactUsDetailsView({super.key});

  @override
  State<ContactUsDetailsView> createState() => _ContactUsDetailsViewState();
}
final GlobalKey<FormState> _key =GlobalKey();
late String body;
final contactUsCont = TextEditingController();
class _ContactUsDetailsViewState extends State<ContactUsDetailsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _key,
          child: Center(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:5.0),
                      child: CustomTextField(
                        onchange: (p0) {
                          body=p0;
                        },
                        
                        validate: true,
                        controller: contactUsCont,
                        validateString: "Can't send Nothing", 
                        hintText: 'Try to be clear and shortly',
                         hintstyle: bodyfont,
                         labelText: 'Describe your purpose',
                         ),
                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black
                      ),
                      onPressed: ()async {
                        if(_key.currentState!.validate()){
                          try{
                             var email=Email(
                              subject: 'Email from cv app user',
                              recipients: ['khalidmaria13@gmail.com'],
                              body:body 
                             );
                             await FlutterEmailSender.send(email);
                          }
                          catch(e){
                       ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('There was an error, try later $e')));
                          }
                        }
                      },
                       child: Text(
                        'Send',style:bodyfont.copyWith(color: Colors.white,fontWeight: FontWeight.bold) ,))],
                  ),
                )
              ],
            ),
          ),
        ),
      ));
  }
}