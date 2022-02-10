import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final product_detail_name;
  final product_detail_Picture;
  final product_detail_new_price;
  final product_detail_old_price;

  ProductDetail({
    this.product_detail_name,
    this.product_detail_Picture,
    this.product_detail_new_price,
    this.product_detail_old_price,
  });
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink.shade200,
        centerTitle: true,
        title: Text(
          'khati',
          style: TextStyle(fontSize: 40.0, color: Colors.white),
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
      body: Container(
        height: 300.0,
        //width: double.infinity,
        child: GridTile(
          child: Container(
            color: Colors.white,
            child: Image.asset(widget.product_detail_Picture),
          ),
          footer: Container(
            color: Colors.white,
            child: ListTile(
              leading: Text(
                widget.product_detail_name,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      '\$${widget.product_detail_old_price}',
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '\$${widget.product_detail_new_price}',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
