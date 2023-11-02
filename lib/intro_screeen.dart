import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_july_2/StateFul_Splash.dart';
void main(){
  runApp(MaterialApp(home:IntroScreen()));
}

class IntroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    PageDecoration decorationPage=const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,
      ),
      bodyTextStyle: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.brown),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white,Colors.yellow,Colors.deepOrange],
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
        )
      )
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: decorationPage,
            title: "Fisrt page",
            body: 'wekfuhwkfhkwhefwhehfhekfew9kmsmd jasn',
            image: IntroImage(
                "https://images.unsplash.com/photo-1518709268805-4e9042af9f23?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=384&q=80")
        ),

        PageViewModel(
          decoration: decorationPage,
            title: "2nd page",
            body: 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk',
            image: IntroImage(
                "https://images.unsplash.com/photo-1516780236580-ef416334d5b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=398&q=80"),
        ),
        PageViewModel(
            decoration: decorationPage,
            title: "3rd page",
            body: 'wekfuhwkfhkwhefwhehfhekfew9kmsmd jasn',
            image: IntroImage(
                "https://images.unsplash.com/photo-1518495973542-4542c06a5843?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")
        ),

        PageViewModel(
            decoration: decorationPage,
            title: "4th page",
            body: 'wekfuhwkfhkwhefwhehfhekfew9kmsmd jasn',
            image: IntroImage(
                "https://images.unsplash.com/photo-1513836279014-a89f7a76ae86?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80")
        ),


      ],
      onSkip:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Splash2())),
      onDone:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Splash2())),

      showSkipButton: true,
      skip: const Text("skip"),
     // showBackButton: true,   skip and bak not work simultaniuos
     // back: const Text("back"),
     next: const Icon(Icons.arrow_forward),
      done: Text('Done'),
      dotsDecorator: const DotsDecorator(
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
          size: Size(12,10),
         activeSize: Size(22,10),
        activeColor: Colors.cyan

      ),

    );

  }

  Widget IntroImage(String imgpath) //reftrcted widgt creatd by user
  {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.network(imgpath, width: double.infinity,),
    );
  }
}

