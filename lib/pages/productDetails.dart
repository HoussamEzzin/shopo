import 'package:e_commerce_app/components/appBar.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: MyAppBar(),
        ),
        body: ListView(
          children: [
            new Container(
              height: 300.0,
              color: Colors.black,
            )
          ],
        ));
  }
}
