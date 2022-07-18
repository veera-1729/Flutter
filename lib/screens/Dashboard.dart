import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  /* Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'.toUpperCase()),
      ),

      //adding assests image method 1
      /*body: Image(
          image: AssetImage("images/flutter1.png"),
          //width: 500.0,
          //height: 1000.0,
          fit: BoxFit.contain,
        )*/
      //method 2
      /*body: Image.asset(
        "images/flutter1.png",
        fit: BoxFit.contain,
      ),*/

      //adding network image 
      //method 1
      body: Image.network(
        "https://appinventiv.com/wp-content/uploads/sites/1/2018/12/Why-Should-Mobile-App-Startups-Choose-Flutter.png",
        fit: BoxFit.cover,
      ),
      //method 2 is same as for assets image
    );
  }*/
  //adding icons normal icons and also fontawsome icons
  /*Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: IconButton(
          /*icon: Icon(
            Icons.alt_route_rounded,
          ),*/
          icon: Icon(FontAwesomeIcons.addressCard, ),
          onPressed: () {},
          iconSize: 100,
          color: Colors.lightGreenAccent,
          splashColor: Colors.white,
          highlightColor: Colors.red,
        ),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 340.0,
        height: 240.0,

        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(50.0),
        //aligning the text
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          //borderRadius: BorderRadius.circular(10.0), //shape and borderRadius cannot be used at same time.
          border: Border.all(color: Colors.grey, width: 6.0),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7fuHjweIvTnINjS2C20RKzBQrlFwXG6nIqQ&usqp=CAU"),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade900,
              blurRadius: 7,
              spreadRadius: 5,
              offset: Offset(4, 4),
            )
          ],
        ),

        /*child: Text(
          'Less Boring',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),*/
      ),
    );
  }
}

/*int getNumber() {
  Random rand = new Random();

  var number = rand.nextInt(100);
  return number;
}*/

//int getNumber() => Random().nextInt(100);
