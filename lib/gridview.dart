import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var Product_List = [
    {
      'name': 'Blazer',
      'picture': 'images/pic1.png',
      'old price': 120,
      'price': 85,
    },

     { 'name': 'Blazer',
      'picture': 'images/pic2.png',
      'old_price': 100,
      'price': 50,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final Prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.Prod_price
  });
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
