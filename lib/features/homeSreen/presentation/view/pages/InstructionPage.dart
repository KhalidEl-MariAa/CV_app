import 'package:flutter/material.dart';
import '../widgets/instructionsFirstHalf.dart';


class InstructionsView extends StatefulWidget {
   const InstructionsView({super.key});

  @override
  State<InstructionsView> createState() => _InstructionsViewState();
}

class _InstructionsViewState extends State<InstructionsView> {
  

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled) {
      return [SliverAppBar(
        collapsedHeight: MediaQuery.of(context).size.height*0.8,
        flexibleSpace:const InstructionsViewFirstHalf()
      )];
    }, body: Container(color: Colors.red,)) ;
  }
}