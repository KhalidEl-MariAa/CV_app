import 'dart:io';
import 'dart:typed_data';
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
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
                           try{
                            pickedimag= await imagepicker.pickImage(source: ImageSource.camera);
                          if (pickedimag!=null) {
                            imagefile=File(pickedimag.path);
                            setState(() {
                              
                            });
                            Future<Uint8List> bytes = imagefile!.readAsBytes();
                            data.imageFile = await bytes;
                            }
                          else{}
                          }
                          catch(e){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('There was an error..try again')));
                          }
                        },
                         child: Row(children: [Text('Take a photo',style: bodyfont.copyWith(color: Colors.white),),
                         const SizedBox(width: 6,),
                         const Icon(Icons.camera_alt,color: Colors.white,)]
                         )
                         ),const SizedBox(width: 10,),
                         ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black
                        ),
                        onPressed: ()async {
                          try{ 
                          pickedimag= await imagepicker.pickImage(source: ImageSource.gallery);
                          if (pickedimag!=null) {
                            imagefile=File(pickedimag.path);
                            setState(() {
                              
                            });
                             Future<Uint8List> bytes = imagefile!.readAsBytes();
                             data.imageFile = await bytes;
                             }
                          
                          else{}}
                          catch(e){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('There was an error..try again')));
                          }
                          }
                        ,
                         child:  Row(children: [Text('From Gallery',style: bodyfont.copyWith(color: Colors.white),),
                         const SizedBox(width: 6,),const Icon(Icons.add_photo_alternate,color: Colors.white,)]
                         )
                         )
                    ],),
                ],
      ),
    );
  }
}