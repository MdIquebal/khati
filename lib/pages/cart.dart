import 'package:e_commerce/homepage.dart';
import 'package:e_commerce/pages/cart_prod.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink.shade200,
        centerTitle: true,
        title: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          child: Text(
            'Your Shopping Cart',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Cart_prod(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(children: [
          Expanded(
            child: ListTile(
              title: Text('Total:'),
              subtitle: Text(
                '\$250.00',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              child: Text('Check Out'),
              color: Colors.red,
            ),
          ),
        ]),
      ),
    );
  }
}
