import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Shopo'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          //drawer header
          UserAccountsDrawerHeader(
            accountName: Text('Houssam Ezzin'),
            accountEmail: Text('ezzinhoussam@gmail.com'),
            currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white))),
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          //drawer body
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('Home Page'), leading: Icon(Icons.home))),
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('My Account'), leading: Icon(Icons.person))),
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_basket))),
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('Categories'), leading: Icon(Icons.dashboard))),
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('Favorites'), leading: Icon(Icons.favorite))),

          Divider(),

          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('Settings'), leading: Icon(Icons.settings))),
          InkWell(
              onTap: () {},
              child: ListTile(title: Text('About'), leading: Icon(Icons.help))),
        ],
      )),
    );
  }
}
