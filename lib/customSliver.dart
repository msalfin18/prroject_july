import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: SliverEx(),));
}
class SliverEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("sliver ex"),
            bottom: AppBar(
              elevation: 0,

              title: Container(
                decoration:
                BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "search",
                    suffixIcon: Icon(Icons.camera_alt),
                    prefixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),
          ),
         SliverList(
           delegate: SliverChildBuilderDelegate(
             (context,index)=>Card(
               child: ListTile(
                 leading: Icon(Icons.account_circle),
                 title: Text("name"),
                 subtitle: Text("687668768467"),
               ),
             )
           ),
         )
        ],
      ),
    );
  }
}
