import 'dart:io';
import 'package:cv_app/core/utils/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImageView extends StatefulWidget {
  const AddImageView({super.key});

  @override
  State<AddImageView> createState() => _AddImageViewState();
}
 File? imagefile;
  var imagepicker= ImagePicker();
   var pickedimag;
class _AddImageViewState extends State<AddImageView> {
  @override
  Widget build(BuildContext context) {
    return Column(
    children: [ CircleAvatar(
                foregroundImage: imagefile==null?  null : FileImage(imagefile!)  ,
                radius: 65,
                child: imagefile!=null? null :const Icon(
                Icons.person ,size: 60,)
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black
                      ),
                      onPressed: ()async {
                         pickedimag= await imagepicker.pickImage(source: ImageSource.camera);
                        if (pickedimag!=null) {
                          imagefile=File(pickedimag.path);
                          setState(() {
                            
                          });
                          
                        }
                        
                        else{

                        }
                      },
                       child: Row(children: [Text('Take a photo',style: bodyfont,),const SizedBox(width: 6,),Icon(Icons.camera_alt)]
                       )
                       ),const SizedBox(width: 10,),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black
                      ),
                      onPressed: ()async {
                         pickedimag= await imagepicker.pickImage(source: ImageSource.gallery);
                        if (pickedimag!=null) {
                          imagefile=File(pickedimag.path);
                          
                          setState(() {
                            
                          });
                          
                        }
                        
                        else{

                        }
                      },
                       child:  Row(children: [Text('From Gallery',style: bodyfont,),
                       const SizedBox(width: 6,),const Icon(Icons.add_photo_alternate)]
                       )
                       )
                  ],),
              ],
    );
  }
}