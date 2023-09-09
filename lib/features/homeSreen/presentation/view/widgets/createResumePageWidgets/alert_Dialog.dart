import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/const.dart';

class CustomAlert extends StatelessWidget {
  const CustomAlert({super.key,required this.title,required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
    title: Text(title,style: titlefont,),
    backgroundColor: Colors.purple[100],
     content: Text(content,style: titlefont,),
     actions: [
       TextButton(onPressed: (){Navigator.pop(context);},
        child: Text('Ok',style: bodyfont,))
     ],
    );
  }
}