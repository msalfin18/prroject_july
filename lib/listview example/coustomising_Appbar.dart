import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_july_2/listview%20example/listview2.dart';
import 'package:project_july_2/listview%20example/listview_constructor.dart';
import 'package:project_july_2/listview%20example/listview_seperator.dart';
import 'package:project_july_2/stateful_login.dart';

void main (){
runApp(MaterialApp(
debugShowCheckedModeBanner: false,
home: Appbar1(),));
}

class Appbar1 extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length:4 ,
    child:  Scaffold(
      appBar: AppBar( backgroundColor: Colors.teal,
        title: const Text('whatsapp'),
        actions: [
          Icon(Icons.camera_alt_outlined),

          SizedBox(width: 15,),
         const Icon(Icons.search),
          PopupMenuButton(itemBuilder:  (context){
            return[
              PopupMenuItem(child: Text('New group')),
              PopupMenuItem(child: Text('settings')),
            ];
          })

        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: Container(
              child: TabBar(tabs: [
                Tab(icon: Icon(Icons.people_rounded),),
                Tab(text: 'chats',),
                Tab(text: 'status',),
                Tab(text: 'calls',),

      ]
      ),

            )),

      ),
    body: TabBarView(children: [
     Login_stateful(),
    ListView_Seperated(),
    ListView2(),
    Listview1(),
    ]),
    )
    );
  }
}
