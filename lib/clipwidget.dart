import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


void main(){
  runApp(MaterialApp(home: ClipWidget()));
}
class ClipWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: ListView(
          children: [
            ///clipRect
            ClipRect(
              child: Container(
                child: Align(
                  widthFactor: .4,
                  heightFactor: .4,
                  alignment: Alignment.center,
                  child: Image.network('https://images.unsplash.com/photo-1616514590575-4eb4a5d9b7c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGdhbWUlMjBvZiUyMHRocm9uZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60'),
                ),
              ),
            ),
    SizedBox(height: 20,),
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Container(
                height: 200,
                width: 200,
                child: Image.network(''), //this image must be with rounded edges
             ),
            ),
            SizedBox(height: 20,), //gap varan ahnene
            ///clipRRect
            ClipOval(
              child: Image.network('https://media.istockphoto.com/id/1464945734/photo/close-up-of-green-leaves-background-daphne-leaves-dark-and-moody-background-concept-with.jpg?s=612x612&w=is&k=20&c=Qy5-feVfC8PymW9LWBZjwwsYQvx6UiJov3Wrly-3nms='),
            ),

            SizedBox(height: 50,),
            ClipPath(
              clipper: OctagonalClipper(),
              child: Container(
                height: 220,
                color: Colors.red,
                child: Center(child: Text("OctagonalClipper()")),
              ),
            ),
    
    SizedBox(height: 10.0,),
    ClipPath(
    clipper: WaveClipperOne(),
    child: Container(
    height: 120,
    color: Colors.deepPurple,
    child: Center(child: Text("WaveClipperOne()")),
    ),
    ),
          ],
        ),
      ),
    );
  }
}
