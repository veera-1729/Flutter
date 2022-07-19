import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("rows and Columns"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.book_online_sharp))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Image(
                        image: AssetImage("images/image-1.jpg"), height: 200)),
                Expanded(
                  flex:2,
                    child: Image(
                        image: AssetImage("images/image-1.jpg"), height: 200)),
                Expanded(
                  flex:4,
                    child: Image(
                        image: AssetImage("images/image-1.jpg"), height: 200)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border_outlined),
                Icon(Icons.star_border_outlined),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone, size: 35.0),
                    Text("phone"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.alt_route, size: 35.0),
                    Text("Alt Route"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, size: 35.0),
                    Text("Share"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
