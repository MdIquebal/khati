import 'package:flutter/material.dart';
import 'package:e_commerce/pages/product_detail.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var Product_List = [
    {
      'name': 'Shirt',
      'picture': 'images/pic1.png',
      'old_price': 50,
      'price': 35,
    },
    {
      'name': 'Mastered Oil',
      'picture': 'images/pic2.png',
      'old_price': 5,
      'price': 3.5,
    },
    {
      'name': 'Honey',
      'picture': 'images/pic3.png',
      'old_price': 20,
      'price': 10,
    },
    {
      'name': 'Logo',
      'picture': 'images/pic4.png',
      'old_price': 10,
      'price': 5,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Product_List.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: Product_List[index]['name'],
          prod_picture: Product_List[index]['picture'],
          prod_old_price: Product_List[index]['old_price'],
          Prod_price: Product_List[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final Prod_price;
  

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.Prod_price,
      });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetail(
                  product_detail_name: prod_name,
                  product_detail_Picture: prod_picture,
                  product_detail_new_price: Prod_price,
                  product_detail_old_price: prod_old_price,
                  
                ),
              ),
            ),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  title: Text(
                    '\$$Prod_price',
                    style: TextStyle(color: Colors.red),
                  ),
                  subtitle: Text(
                    '\$$prod_old_price',
                    style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
