import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:OnlineBepar/Components/horizontal_listview.dart';
import 'package:OnlineBepar/Components/products.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
        ],
        animationCurve:  Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 10.0,
        dotIncreasedColor: Colors.red,
      ),
    );
    return Scaffold(
        appBar:  AppBar(
          elevation: 0.0,
          backgroundColor: Colors.red,
          title: Text(
            'OnlineBepar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                accountName: Text("Dipesh khanal"),
                accountEmail: Text("Dkhanal112@gmail.com"),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("My account"),
                  leading: Icon(Icons.person),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("My Orders"),
                  leading: Icon(Icons.shopping_basket),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Categories"),
                  leading: Icon(Icons.dashboard),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Favourites"),
                  leading: Icon(Icons.favorite),
                ),
              ),

              Divider(), //divide

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            image_carousel,
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Categories'),
            ),

            HorizontalList(),


            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Recent products'),
            ),

            Container(
              height: 320.0,
              child: Products(),
            )
          ],
        ));
  }
}
