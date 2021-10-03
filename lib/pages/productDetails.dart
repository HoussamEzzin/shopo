import 'package:e_commerce_app/components/appBar.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailPicture;
  final productDetailPrice;
  final productDetailOldPrice;

  const ProductDetails(
      {Key? key,
      this.productDetailName,
      this.productDetailPicture,
      this.productDetailPrice,
      this.productDetailOldPrice})
      : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: CustomScrollView(
            slivers: [MyAppBar()],
          ),
        ),
        body: ListView(
          children: [
            new Container(
              height: 300.0,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.productDetailPicture),
                ),
                footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Container(
                        width: 140,
                        child: Text(
                          widget.productDetailName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      title: Row(
                        children: [
                          Expanded(
                              child: Text(
                            "${widget.productDetailOldPrice}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          )),
                          Expanded(child: Text("${widget.productDetailPrice}"))
                        ],
                      ),
                    )),
              ),
            )
          ],
        ));
  }
}
