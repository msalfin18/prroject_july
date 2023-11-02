import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_july_2/listview%20example/fi%20card%20using_stack.dart';
void main(){
  runApp(MaterialApp(home: DraweEx(),));
}
class DraweEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drawer"),
      ),
      drawer: Drawer(
      child: Container(decoration:BoxDecoration(
         gradient:LinearGradient(colors: [Colors.red,Colors.orange],)
       ),
     child:    ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(

              ),
              accountName: Text('padeep'),
              accountEmail: Text('abc@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("data:image/jpeg;base64,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"),

              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/image/th (3).jpeg'),
                )
              ],),
            ListTile(
              leading: Icon(Icons.collections),
              title: Text("dashboard"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Ficard()));
                },

            ),

            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("favorite"),
            ),

            ListTile(
              leading: Icon(Icons.help),
              title: Text("help"),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
            ),


          ],
        ),
      ),
      ));
  }
}
