import 'package:e_commerce_app/components/appBar.dart';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerce_app/components/horizontal_listview.dart';
import 'package:e_commerce_app/components/products.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool _visible = true;
  late final AnimationController _controller;
  bool open = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/m2.jpg'),
          AssetImage('assets/images/w1.jpeg'),
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/w4.jpeg'),
        ],
        autoplay: false,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: MyAppBar(),
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
                    title: Text('Settings'),
                    leading: Icon(Icons.settings, color: Colors.green))),
            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('About'),
                    leading: Icon(Icons.help, color: Colors.blueAccent))),
          ],
        )),
        body: ListView(
          children: [
            imageCarousel,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Horizontal list view :
            HorizontalList(),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Recent Products',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //recent products
            Container(
              height: 280.0,
              child: Products(),
            ),
          ],
        ));
  }
}
