import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home:LottieEx(),));
}

class LottieEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/animation/animation_1.json"),
       //  Lottie.network("https://lottie.host/7c97a2c6-3344-4baf"),
      ),
    );
  }

}