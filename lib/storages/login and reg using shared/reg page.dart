import 'package:flutter/material.dart';
import 'package:project_july_2/storages/simple login/loginshared.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home:Registration_page()));
}

class Registration_page extends StatefulWidget {
  @override
  State<Registration_page> createState() => _Registration_pageState();
}

class _Registration_pageState extends State<Registration_page> {
  final name = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  late SharedPreferences prefss;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child:
        Column(
            children: [
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: name,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "name"
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: username,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "username"
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: password,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "password"
          ),
        ),

      ),
      ElevatedButton(
          onPressed: () => Storedata(),
      child: const Text("reg here"),
    )],
    )
    ,
    )
    ,

    );
  }

  void Storedata() async {
  String personname=name.text;
  String user_name=username.text;
  String passwordd=password.text;

  prefss=await SharedPreferences.getInstance()!;
  prefss.setString('name',personname);
  prefss.setString('usernme',user_name);
  prefss.setString('password',passwordd);

 // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_Shared()));
  }
}
