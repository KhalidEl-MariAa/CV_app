import 'package:cv_app/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
           gradient: const LinearGradient(
              colors: [Colors.purple,Colors.blue],
              
            ),
            borderRadius: BorderRadius.circular(20)
          ),
          child: GNav(
            
            iconSize: 25,
             gap: 5,
             textStyle: titlefont.copyWith(color: Colors.amber),
            activeColor: Colors.black,
            tabs:const [
              GButton(icon: Icons.lightbulb,iconColor: Colors.amber,text: 'Instructions', ),
               GButton(icon: Icons.call,iconColor: Colors.white,text: 'Contact us',),
               GButton(icon: Icons.border_color_outlined,iconColor: Colors.white,text: 'Create Resume',),

                
            ] ),
        ) ,
      ),
    );
  }
}