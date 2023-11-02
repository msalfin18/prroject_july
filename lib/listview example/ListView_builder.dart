import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListView_Builder(),));
}

class ListView_Builder extends StatelessWidget {
  var images=[
    "assets/image/download.jpeg"
    "assets/image/th.jpeg"
    "assets/image/th (1).jpeg"
    "assets/image/th (2).jpeg"
    "assets/image/th (3).jpeg"
    "assets/image/th (4).jpeg"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Listview Builder"),),
        body: ListView(
            children:[
             const ListTile(
               leading: CircleAvatar(
                 child: Icon(Icons.insert_link_sharp),
               ),
                title: Text(""),
              ),
              ListView.builder(itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index)
                  {
                    return ListTile(

                      title: Text("Hi"),
                      subtitle: Row(
                        children: [
                          Icon(Icons.call_missed_rounded,color: Colors.red),
                          Text("25 Sep 2023"),
                          Text("10:12")
                        ],
                      ),
                      leading: Image.asset(images[index]),
                      trailing: Icon(Icons.call),
                    );
                  }),
            ]
        ),
    );

  }
}