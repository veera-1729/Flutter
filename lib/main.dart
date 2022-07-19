import 'package:flutter/material.dart';
import 'package:travel/screens/Dashboard.dart';
import './screens/Home.dart';
import './screens/row,column.dart';
import './screens/ListView.dart';
import './screens/Listview2.dart';
import './screens/ListviewBuilder.dart';
import './screens/NavigationDrawer1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      // home: Dashboard(),
      // home: Home(),
      //home: RowDemo(),

      //home: Listview(),
      //home: Listview2(),

      //home:ListviewBuilder(),

      home: Navigationdrawer(),
    );
  }
}
