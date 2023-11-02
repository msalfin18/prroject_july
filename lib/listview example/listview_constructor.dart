import 'dart:html';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Listview1(),));
}

class Listview1 extends StatelessWidget {
  const Listview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Listview 1"),
      ),
      body:ListView(
        children: [
          Card( child: ListTile(
              leading: Icon(Icons.people_alt_rounded),
              title: Text('product 1'),
              subtitle: Text("smaple sample sub"),
              trailing: Text('10:11'),

            )),
          Card(child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/image/download.jpeg")),
            title: const Text("product 1"),
            subtitle: Text("sample sub"),
            trailing: Column(

              children: [
                Text('10.11'),
                CircleAvatar(minRadius: 8,
                 maxRadius: 9,
                backgroundColor: Colors.green,
                    child: Text("2"),)
              ],
            ),
          )),


    ],
      ),
    );
  }
}
