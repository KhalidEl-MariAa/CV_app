import 'package:cv_app/core/utils/fonts.dart';
import 'package:flutter/material.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  
       Center(
         child: CustomScrollView(
           slivers:[ SliverFillRemaining(
            hasScrollBody: false,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('We promise we will review it.. ',
              style: titlefont.copyWith(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*0.05)),
              const SizedBox(height: 25,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black
                ),
                onPressed: (){},
               child: Text('Contact Us',style: bodyfont.copyWith(color: Colors.white),)) ],
              ),
           ),]
         ),
       );
      
    
  }
}