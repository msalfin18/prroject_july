import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main()
{
  runApp(MaterialApp(
    home:  ListView_Seperated(),));
}

class ListView_Seperated extends StatelessWidget {
  const ListView_Seperated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view seperator"),
      ),
      body: ListView.separated(itemBuilder: (ctx,i){
       return  Card(
         child: FaIcon(FontAwesomeIcons.whatsapp,
         color: Colors.teal,),
          //child: Image.asset("assets/image/download.jpeg"),
        );
      },
      separatorBuilder: (context,index){
        if(index % 5==0) {
          return Divider( color: Colors.primaries[index % Colors.primaries.length], thickness: 10,);
        }else{
          return SizedBox();
        }
        },
        itemCount: 15),
    );

  }
}
