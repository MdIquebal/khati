import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.blue.shade200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/pic1.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic2.png',
            image_caption: 'Mas. Oil',
          ),
          Category(
            image_location: 'images/pic3.png',
            image_caption: 'Homey',
          ),
          Category(
            image_location: 'images/pic4.png',
            image_caption: 'Logo',
          ),
          Category(
            image_location: 'images/tshirt.png',
            image_caption: 'T-Shirt',
          ),
          Category(
            image_location: 'images/pic1.png',
            image_caption: 'T-Shirt',
          ),
          Category(
            image_location: 'images/pic2.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic1.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic2.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic3.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic4.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/tshirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic1.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic2.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic1.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic2.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic3.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic4.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/tshirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic1.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/pic2.png',
            image_caption: 'Shirt',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final image_location;
  final image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              height: 70.0,
              width: 100.0,
              fit: BoxFit.cover,
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(image_caption),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
