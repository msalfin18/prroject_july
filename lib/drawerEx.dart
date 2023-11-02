import 'package:flutter/material.dart';
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
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('data:image/jpeg;base64,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')
                ) ),
              accountName: Text('padeep'),
            accountEmail: Text('abc@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/image/th (3).jpeg"),

            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/image/th (3).jpeg'),
              )
            ],),
            ListTile(
              leading: Icon(Icons.home),
            title: Text("Home"),
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
    );
  }
}
