import 'package:e_commerce/homepage.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final product_detail_name;
  final product_detail_Picture;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_brand_name;

  ProductDetail({
    this.product_detail_name,
    this.product_detail_Picture,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_brand_name,
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
        title: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => HomePage()),
              ),
            );
          },
          child: Text(
            'khati',
            style: TextStyle(fontSize: 40.0, color: Colors.white),
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
      body: ListView(
        children: [
          Container(
            height: 300.0,
            //width: double.infinity,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_Picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15.0,
                    ),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '\$${widget.product_detail_old_price}',
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
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
                  subtitle: Row(children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Size'),
                                  content: Text('Choose the size'),
                                  actions: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(context);
                                      },
                                      child: Text(
                                        'Close',
                                        style: TextStyle(
                                            color: Colors.red.shade300),
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                        color: Colors.white,
                        textColor: Colors.grey,
                        elevation: 0.2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Size'),
                            ),
                            Expanded(
                              child: Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text('Colors'),
                                title: Text('Choose a color'),
                                actions: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: Text(
                                      'Close',
                                      style:
                                          TextStyle(color: Colors.red.shade300),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        color: Colors.white,
                        textColor: Colors.grey,
                        elevation: 0.2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Price'),
                            ),
                            Expanded(
                              child: Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Quantity'),
                                  content: Text('Choose quantity'),
                                  actions: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(context);
                                      },
                                      child: Text(
                                        'Close',
                                        style: TextStyle(
                                            color: Colors.red.shade300),
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                        color: Colors.white,
                        textColor: Colors.grey,
                        elevation: 0.2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Qty.'),
                            ),
                            Expanded(
                              child: Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(child: Text('Buy Now')),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.red,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.red,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(),
          Column(
            children: [
              Row(
                children: [
                  Text('Product Name:'),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(widget.product_detail_name),
                ],
              ),
              Row(
                children: [
                  Text('Brand Name:'),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(widget.product_detail_brand_name),
                ],
              ),
              Row(
                children: [
                  Text('Condition:'),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('New'),
                ],
              ),
            ],
          ),
          Divider(color: Colors.pink.shade200),
          Text(
            'Similar Product:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            height: 360.0,
            child: Similar_product(),
          ),
        ],
      ),
    );
  }
}

class Similar_product extends StatefulWidget {
  @override
  _Similar_productState createState() => _Similar_productState();
}

class _Similar_productState extends State<Similar_product> {
  var Product_List = [
    {
      'name': 'Shirt',
      'picture': 'images/pic1.png',
      'old_price': 50,
      'price': 35,
      'brand_name': 'Man',
    },
    {
      'name': 'Mastered Oil',
      'picture': 'images/pic2.png',
      'old_price': 5,
      'price': 3.5,
      'brand_name': 'khati',
    },
    {
      'name': 'Honey',
      'picture': 'images/pic3.png',
      'old_price': 20,
      'price': 10,
      'brand_name': 'khati',
    },
    {
      'name': 'Logo',
      'picture': 'images/pic4.png',
      'old_price': 10,
      'price': 5,
      'brand_name': 'khati',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Product_List.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Similar_Single_prod(
          prod_name: Product_List[index]['name'],
          prod_picture: Product_List[index]['picture'],
          prod_old_price: Product_List[index]['old_price'],
          Prod_price: Product_List[index]['price'],
          prod_brand_name: Product_List[index]['brand_name'],
        );
      },
    );
  }
}

class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final Prod_price;
  final prod_brand_name;

  Similar_Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.Prod_price,
    this.prod_brand_name,
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
                  product_detail_brand_name: prod_brand_name,
                ),
              ),
            ),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    Text(
                      '\$$Prod_price',
                      style: TextStyle(color: Colors.red),
                    ),

                    // ListTile(
                    //   leading: Text(
                    //     prod_name,
                    //     style: TextStyle(fontWeight: FontWeight.w900),
                    //   ),
                    //   title: Text(
                    //     '\$$Prod_price',
                    //     style: TextStyle(color: Colors.red),
                    //   ),
                    //   subtitle: Text(
                    //     '\$$prod_old_price',
                    //     style: TextStyle(
                    //         color: Colors.black,
                    //         decoration: TextDecoration.lineThrough),
                    //   ),
                    // ),
                  ],
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
