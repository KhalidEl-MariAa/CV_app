import 'package:cv_app/core/utils/fonts.dart';
import 'package:flutter/material.dart';

class ContactUsDetailsView extends StatefulWidget {
  const ContactUsDetailsView({super.key});

  @override
  State<ContactUsDetailsView> createState() => _ContactUsDetailsViewState();
}
final GlobalKey<FormState> _key =GlobalKey();
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
                        padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 50),
                        child: Text(
                        "We can't know your identity so you can say what you want, if you need from us to recommunicate with you after your message ... please write your email or phone in the end of your message",
                        style: titlefont.copyWith(fontSize: MediaQuery.of(context).size.width*0.05,fontWeight: FontWeight.bold),),
                      ),
                    TextFormField(
                      style:bodyfont ,
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Can't send nothing!";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Try to be clear and describe your problem' ,
                        labelText: 'Describe your purpose',
                        labelStyle: bodyfont,
                        hintStyle: titlefont,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        )
                      ),
                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black
                      ),
                      onPressed: (){
                        if(_key.currentState!.validate()){
                          
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