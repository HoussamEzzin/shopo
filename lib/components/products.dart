import 'package:e_commerce_app/pages/productDetails.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 89,
    },
    {
      "name": "Red dress",
      "picture": "assets/images/products/dress1.jpeg",
      "old_price": 100,
      "price": 69,
    },
    {
      "name": "Hills",
      "picture": "assets/images/products/hills1.jpeg",
      "old_price": 98,
      "price": 59,
    },
    {
      "name": "Pants",
      "picture": "assets/images/products/pants1.jpg",
      "old_price": 130,
      "price": 99,
    },
    {
      "name": "Shoe",
      "picture": "assets/images/products/shoe1.jpg",
      "old_price": 120,
      "price": 89,
    },
    {
      "name": "Skt",
      "picture": "assets/images/products/skt1.jpeg",
      "old_price": 99,
      "price": 79,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['old_price'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  const SingleProduct(
      {Key? key,
      this.productName,
      this.productPicture,
      this.productOldPrice,
      this.productPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProductDetails())),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$$productPrice",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    '\$$productOldPrice',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(productPicture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
