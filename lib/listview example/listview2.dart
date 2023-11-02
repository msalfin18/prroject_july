import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListView2(),));
}

class ListView2 extends StatelessWidget {
  var title = [
    'Data1',
    'Data2',
    'Data3',
    'Data4',
    'Data5',
    'Data6',
    'Data7',
    'Data8',
    'Data9',
    'Data10'
  ];
  var subti = [20, 30, 40, 50, 100, 140, 150, 310, 200, 190];
  var Icon=[
    Icons.ac_unit_outlined,
    Icons.ac_unit,
    Icons.access_time_filled_rounded,
    Icons.access_time,
    Icons.account_circle_outlined,
    Icons.access_alarm,
    Icons.abc,
    Icons.account_box_outlined,
    Icons.add_alert_outlined,
    Icons.account_balance_wallet_rounded
  ];
//
  var icons = [
    Icons.ac_unit,
    Icons.add,
    Icons.widgets,
    Icons.ac_unit,
    Icons.account_box,
    Icons.yard
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView 2"),
      ),
      body: ListView(
        children: List.generate(10, (index) =>
            Card(
              child: ListTile(
                title: Text(title[index]),
                subtitle: Text('${subti[index]}'),
                //leading: Icon.asset(icons[index]),
                // trailing: Icon(icons[index]),
               // trailing: Icon(Icons.shopping_cart),
              )
            )),
      ),
    );
  }
}