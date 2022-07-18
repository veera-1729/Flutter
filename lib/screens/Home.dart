import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  //buttons
  /*Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let's Begin",
              ),
              Icon(Icons.add_shopping_cart_outlined),
            ],
          ),

          // icon: Icon(Icons.add_shopping_cart_outlined),
          // label: Text("let's Begin"),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            fixedSize: Size(300, 80),
            textStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            primary: Colors.yellow,
            onPrimary: Colors.black,
            elevation: 15,
            shadowColor: Colors.yellow,
            side: BorderSide(color: Colors.black, width: 2),
            alignment: Alignment.center,
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }*/

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.lightGreenAccent,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("Home"),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.menu_book_outlined), onPressed: () {}),
        ],
        elevation: 50,
        titleSpacing: 20,
        //to make the title center
        //centerTitle: true,
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(0))),
        flexibleSpace: Image(
          image: NetworkImage(
              "data:image/webp;base64,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"),
          fit: BoxFit.cover,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('AppBar Tutorual', style: TextStyle(fontSize: 22)),
            Text("Coding with Tea",
                style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
