import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
        //height of each tile
        itemExtent: 70.0,
        //puts tiles from bottom to top
        reverse:false,
        // scrollDirection: Axis.vertical,//default
        scrollDirection: Axis.vertical,
        //shrinkWrap: true,
        children: [
          ListTile(
            leading: CircleAvatar(
                child: Icon(Icons.alarm_add_sharp),
                backgroundColor: Colors.green),
            title: Text("Sales"),
            subtitle: Text("Sales of the week"),
            trailing: Text('3500'),
            onTap: () {},
            tileColor: Colors.brown.shade100,
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle_outlined),
            title: Text("Customers"),
            subtitle: Text("Total customers visited"),
            trailing: Text("200"),
            onTap: () {},
            tileColor: Colors.brown.shade300,
          ),
          ListTile(
            leading: Icon(Icons.account_balance_sharp),
            title: Text("Profit", style: TextStyle(color: Colors.white)),
            subtitle: Text('Profit of the week'),
            trailing: Text("1500"),
            onTap: () {},
            tileColor: Colors.brown.shade400,
          )
        ],
      )),
    );
  }
}
