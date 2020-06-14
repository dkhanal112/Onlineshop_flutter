import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
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
              onTap: (){},
              child: ListTile(
                title:Text("Home Page") ,
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title:Text("My account") ,
                leading: Icon(Icons.person),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title:Text("My Orders") ,
                leading: Icon(Icons.shopping_basket),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title:Text("Categories") ,
                leading: Icon(Icons.dashboard),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title:Text("Favourites") ,
                leading: Icon(Icons.favorite),
              ),
            ),
          ],
        ),
      ),



    );
  }
}
