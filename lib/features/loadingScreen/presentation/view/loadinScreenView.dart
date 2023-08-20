import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class LoadingScreenView extends StatefulWidget {
  const LoadingScreenView({super.key});

  @override
  State<LoadingScreenView> createState() => _LoadingScreenViewState();
}


class _LoadingScreenViewState extends State<LoadingScreenView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

 
  @override
  Widget build(BuildContext context) {
    
    return  SafeArea(
      child: Scaffold(
    
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadingAnimationWidget.flickr(
                leftDotColor: Colors.red,
                 rightDotColor: Colors.black,
                  size: MediaQuery.of(context).size.width*0.11,
                  )
            ],
          ),
        ),
      ),
    );
  }
}