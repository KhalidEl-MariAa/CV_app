import 'package:cv_app/features/homeSreen/presentation/view/pages/InstructionPage.dart';
import 'package:cv_app/features/homeSreen/presentation/view/pages/contactUspage.dart';
import 'package:cv_app/features/homeSreen/presentation/view/pages/createResume.dart';
import 'package:cv_app/features/homeSreen/presentation/view_model/cubit/add_resume_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../../core/utils/constants/const.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

int selectedIndex = 0;
var pges = [
  const InstructionsView(),
  const CreateResumeView(),
  const ContactUsView()
];

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => AddResumeDataCubit(),
        child: Scaffold(
          backgroundColor: selectedIndex == 1 ? Colors.purple : Colors.blueGrey,
          body: pges[selectedIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                ),
                borderRadius: BorderRadius.circular(20)),
            child: GNav(
                selectedIndex: selectedIndex,
                onTabChange: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                iconSize: 25,
                gap: 5,
                textStyle: titlefont.copyWith(color: Colors.amber),
                activeColor: Colors.black,
                tabs: const [
                  GButton(
                    icon: Icons.lightbulb,
                    iconColor: Colors.amber,
                    text: 'Instructions',
                  ),
                  GButton(
                    icon: Icons.border_color_outlined,
                    iconColor: Colors.white,
                    text: 'Create your Resume',
                  ),
                  GButton(
                    icon: Icons.call,
                    iconColor: Colors.white,
                    text: 'Contact us',
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
