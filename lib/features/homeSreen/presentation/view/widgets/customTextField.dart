import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/const.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,
    required this.validateString,
    required this.hintText,
    required this.hintstyle,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.inputType,
    this.onchange,
     this.controller,
     this.onFieldSubmitted,
     this.validate,
     this.maxlines});

  String validateString;
  String hintText;
  TextStyle hintstyle;
  Widget? prefixIcon;
  Widget? suffixIcon; 
  TextInputType? inputType;
  void Function(String)? onchange;
  var controller;
  String? labelText;
  void Function(String)? onFieldSubmitted;
  bool? validate = true;
  int? maxlines;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
                      maxLines: maxlines ,
                       onFieldSubmitted: onFieldSubmitted,
                       controller:controller ,
                       onChanged: onchange,
                      keyboardType:inputType ,
                      validator: (value) {
                      if(validate==true){
                        if(value!.isEmpty){
                          return validateString;
                        }}
                       
                      return null; 
                       },
                      style:bodyfont ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                        hintText: hintText,
                        hintStyle: hintstyle,
                        labelText: labelText,
                        prefixIcon: prefixIcon,
                        suffixIcon: suffixIcon,
                        labelStyle: bodyfont
                        
                        
                      ),
                    );
  }
}