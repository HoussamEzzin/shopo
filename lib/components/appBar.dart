import 'package:e_commerce_app/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_commerce_app/main.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.1,
      backgroundColor: Colors.redAccent,
      title: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => new HomePage()));
        },
        child: Text('Shopo',
            style: GoogleFonts.dekko(textStyle: TextStyle(fontSize: 30.0))),
      ),
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
    );
  }
}
