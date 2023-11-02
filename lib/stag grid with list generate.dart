import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: StagGridListGenerate(),));
}

class StagGridListGenerate extends StatelessWidget {
  var images = [
    'assets/image/download.jpeg',
    'assets/image/th.jpeg',
    'assets/image/th (1).jpeg',
  ];

  var  cac=[2,1,3];
  var mac=[2,3,1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('staggered grid view using list.generate'),),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,
        children: List.generate(
          3,
    (index)=>StaggeredGridTile.count(
      crossAxisCellCount: cac[index],
      mainAxisCellCount: mac[index],
     child:Card(
      child: Image.asset(images[index]),
     )      )),),
      ),
    );
  }
}
