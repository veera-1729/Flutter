import 'package:flutter/material.dart';

class Navigationdrawer extends StatelessWidget {
  Navigationdrawer({Key? key}) : super(key: key);

  List<String> products = ["Bed", "Sofa", "Chair"];
  List<String> productDetails = [
    'King size bed',
    "King size sofa",
    "Wooden chair"
  ];
  List<int> price = [3000, 2500, 1860];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("Support@veera.com"),
              accountName: Text("Nothing yet!!"),
              currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage("images/steve2.jpg")),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage("images/steve3.jpg")),
                CircleAvatar(foregroundImage: AssetImage("images/steve4.jpg")),
              ],
            ),
            ListTile(
                leading: Icon(Icons.home), title: Text("Home"), onTap: () {}),
            ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Shop"),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favourite"),
                onTap: () {}),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("Labels"),
            ),
            ListTile(
                leading: Icon(Icons.label), title: Text("Red"), onTap: () {}),
            ListTile(
                leading: Icon(Icons.label), title: Text("Green"), onTap: () {}),
            ListTile(
                leading: Icon(Icons.label), title: Text("Blue"), onTap: () {})
          ],
        ),
      ), //acts as leading button also
      body: Container(
        child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(child: Text(products[index][0])),
                title: Text(products[index]),
                subtitle: Text(productDetails[index]),
                trailing: Text(price[index].toString()),
                onTap: () {},
              );
            }),
      ),
    );
  }
}
