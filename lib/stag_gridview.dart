import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGriddd extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("staggered grid view"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 5,
        children: const [
          StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 5,
          child: Card( color: Colors.green,
            child:Center(
              child: Icon(Icons.balance),),
          )),

          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 3,
              child: Card( color: Colors.redAccent,
                child:Center(
                  child: Icon(Icons.balance),),
              )),

          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card( color: Colors.cyan,
                child:Center(
                  child: Icon(Icons.severe_cold),),
              )),



        ],))

    );
  }
}
