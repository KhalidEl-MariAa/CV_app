
import 'package:cv_app/core/utils/pagesName.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/const.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  
       Center(
         child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blueGrey,Colors.grey,Colors.blueGrey])
          ),
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
                  onPressed: (){
                    Navigator.of(context).pushNamed(PagesNames.contactUsDetails);
                  },
                 child: Text('Contact Us',style: bodyfont.copyWith(color: Colors.white),)) ],
                ),
             ),]
           ),
         ),
       );
      
    
  }
}