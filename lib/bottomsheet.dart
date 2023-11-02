import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_july_2/listview%20example/fi%20card%20using_stack.dart';
void main(){
  runApp(MaterialApp(home: Bottom_sheetEx()));
}
class Bottom_sheetEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onLongPress: (){
          showSheet(context);
          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Ficard()));

        },
        child: Center(
            child: Image.network('https://images.unsplash.com/photo-1505968409348-bd000797c92e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80')
        ),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showBottomSheet(context: context, builder:(context){
      return const Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Share via",style: TextStyle(fontSize: 20),),
          Divider(color: Colors.black,),
          ListTile(leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),title: Text("whatsapp"),),
          ListTile(leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.pinkAccent,),title: Text("instagram"),)
        ],
      );
    });
  }
}