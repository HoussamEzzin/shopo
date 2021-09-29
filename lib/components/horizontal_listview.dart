import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
              imageLocation: 'assets/images/cats/tshirt.png',
              imageCaption: 'Shirt'),
          Category(
              imageLocation: 'assets/images/cats/accessories.png',
              imageCaption: 'Accessories'),
          Category(
              imageLocation: 'assets/images/cats/dress.png',
              imageCaption: 'Dress'),
          Category(
              imageLocation: 'assets/images/cats/formal.png',
              imageCaption: 'Formal'),
          Category(
              imageLocation: 'assets/images/cats/jeans.png',
              imageCaption: 'Jeans'),
          Category(
              imageLocation: 'assets/images/cats/shoe.png',
              imageCaption: 'Shoe'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  const Category(
      {Key? key, required this.imageLocation, required this.imageCaption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {
            print(imageLocation);
          },
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                imageLocation,
                width: 100,
                height: 60,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  imageCaption,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),
        ));
  }
}
