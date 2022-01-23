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
          child: MyAppBar(),
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
                    color: Colors.white70,
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
                            "\$${widget.productDetailOldPrice}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          )),
                          Expanded(
                            child: Text("\$${widget.productDetailPrice}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                          )
                        ],
                      ),
                    )),
              ),
            ),
            Row(
              children: [
                //The size button :
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the size"),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  'Close',
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: Text("Size")),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                )),
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Pick a Color"),
                            actions: [
                              MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    'Close',
                                    style: TextStyle(color: Colors.blueAccent),
                                  ))
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: Text("Color")),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                )),
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('How much Items do you want ? '),
                            actions: [
                              MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    "Close",
                                    style: TextStyle(color: Colors.blueAccent),
                                  ))
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: Text("How Much")),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ))
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: MaterialButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy Now'),
                )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_shopping_cart),
                    color: Colors.red),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                ),
              ],
            ),
            Divider(),
            ListTile(
              title: Text("Product details"),
              subtitle: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget massa turpis. Fusce condimentum sed dolor id dignissim. Cras non elit ornare, ultrices nulla id, blandit libero. Donec ultricies auctor lacus, vitae convallis lectus imperdiet et. Duis placerat nunc quis dapibus semper. Sed nec nulla posuere, iaculis tortor non, varius lacus. Integer in vestibulum est. Ut ut elit in odio viverra tristique sed eu nisi. Ut porttitor magna sit amet nunc dignissim, vel suscipit tortor sollicitudin. "),
            ),
            Divider(),
            new Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product name",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text(widget.productDetailName),
                )
              ],
            ),
            new Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product brand",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                //todo : create product brand
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text("Brand X"),
                )
              ],
            ),
            new Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product condition",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text("NEW"),
                )
              ],
            )
          ],
        ));
  }
}
