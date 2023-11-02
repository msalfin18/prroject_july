import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_july_2/listview%20example/fi%20card%20using_stack.dart';
import 'package:project_july_2/registrationPage.dart';
void main(){
  runApp(MaterialApp(home:Car_slider()));
}
class Car_slider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: GestureDetector(
          child: Center( child: Text("slider"),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: CarouselSlider(items: [
        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Ficard()));
          },
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegistrationPage()));

            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit:BoxFit.cover,
                    image: NetworkImage("https://plus.unsplash.com/premium_photo-1690205360312-4156caa6c6ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aGFuZHMlMjBpbnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"))
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit:BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1626808642875-0aa545482dfb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80"))
          ),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit:BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1505968409348-bd000797c92e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80"))
          ),
        ), Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit:BoxFit.cover,
                  image: NetworkImage("https://plus.unsplash.com/premium_photo-1690205360312-4156caa6c6ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aGFuZHMlMjBpbnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"))
          ),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit:BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1626808642875-0aa545482dfb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80"))
          ),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit:BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1505968409348-bd000797c92e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80"))
          ),
        )
      ],options: CarouselOptions(
          autoPlay: true,
      viewportFraction: .8,
          height: 200,
        enlargeCenterPage: true, //infinite scroll ,if diidt use this scrool will end when after al the item shown
        autoPlayCurve: Curves.linear,
        autoPlayAnimationDuration: const Duration(seconds: 1)
      ),),
    );
  }
}
