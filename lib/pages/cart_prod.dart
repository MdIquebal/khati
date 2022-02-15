import 'package:flutter/material.dart';

class Cart_prod extends StatefulWidget {
  @override
  _Cart_prodState createState() => _Cart_prodState();
}

class _Cart_prodState extends State<Cart_prod> {
  var card_Product_List = [
    {
      'name': 'Shirt',
      'picture': 'images/pic1.png',
      'old_price': 50,
      'price': 35,
      'brand_name': 'khati',
      'size': 'M',
      'color': 'Mix',
      'qty': 1,
    },
    {
      'name': 'Mas. Oil',
      'picture': 'images/pic2.png',
      'old_price': 5,
      'price': 3.5,
      'brand_name': 'khati',
      'size': '1Kg Pack',
      'color': 'Natural',
      'qty': 1,
    },
    {
      'name': 'Honey',
      'picture': 'images/pic3.png',
      'old_price': 20,
      'price': 10,
      'brand_name': 'khati',
      'size': '500ml pack',
      'color': 'Honey Color',
      'qty': 1,
    },
    {
      'name': 'Logo',
      'picture': 'images/pic4.png',
      'old_price': 10,
      'price': 5,
      'brand_name': 'khati',
      'size': 'M',
      'color': 'Red & Green',
      'qty': 1,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: card_Product_List.length,
        itemBuilder: (context, index) {
          return Single_card_prod(
            cart_prod_name: card_Product_List[index]['name'],
            cart_prod_picture: card_Product_List[index]['picture'],
            cart_prod_price: card_Product_List[index]['price'],
            cart_prod_size: card_Product_List[index]['size'],
            cart_prod_color: card_Product_List[index]['color'],
            cart_prod_qty: card_Product_List[index]['qty'],
          );
        });
  }
}

class Single_card_prod extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;
  Single_card_prod(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          cart_prod_picture,
          height: 80.0,
          width: 80.0,
        ),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: [
            Row(
              children: [
                Text("Size:"),
                Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 5.0, 12.0, 5.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Text("Color:"),
                Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                '\$$cart_prod_price',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ),
          ],
        ),
        trailing: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_up),
            ),
            Text('\$$cart_prod_qty'),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down),
            ),
          ],
        ),
      ),
    );
  }
}
