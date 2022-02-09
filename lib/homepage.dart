import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'gridview.dart';
import 'horizontal_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final controller = CarouselController();
int activeIndex = 0;
final urlImages = [
  'https://images.pexels.com/photos/53141/rose-red-blossom-bloom-53141.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
  'https://images.pexels.com/photos/5723626/pexels-photo-5723626.jpeg?cs=srgb&dl=pexels-sarah-dauchy-5723626.jpg&fm=jpg',
  'https://images.pexels.com/photos/53141/rose-red-blossom-bloom-53141.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
  'https://images.pexels.com/photos/5723626/pexels-photo-5723626.jpeg?cs=srgb&dl=pexels-sarah-dauchy-5723626.jpg&fm=jpg',
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
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
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Iquebal Mahmud'),
              accountEmail: Text('ikbalmt@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/pic1.png'),
                ),
              ),
              decoration: BoxDecoration(color: Colors.pink.shade200),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home, color: Colors.pink.shade200),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.pink.shade200,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Order'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.pink.shade200,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.pink.shade200,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourit'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.pink.shade200,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.pink.shade200,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.pink.shade200,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider.builder(
            carouselController: controller,
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              initialPage: 0,
              //autoPlayAnimationDuration: Duration(seconds: 2),
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              //pageSnapping: true,
              //enableInfiniteScroll: false,
              autoPlayInterval: Duration(seconds: 5),
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildImage(urlImage, index);
            },
          ),
          SizedBox(height: 12.0),
          Container(
            height: 40.0,
            width: 100.0,
            child: Center(
              child: buildIndicator(),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Categories :',
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
          HorizontalList(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Recent Products :',
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
          Container(
            height: 250.0,
            width: 150.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}

Widget buildImage(String urlImages, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      width: 400,
      color: Colors.grey,
      child: Image.network(urlImages, fit: BoxFit.cover),
    );

Widget buildIndicator() => Container(
      height: 20.0,
      width: 400.0,
      padding: EdgeInsets.symmetric(horizontal: 150.0),
      color: Colors.black,
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        onDotClicked: animateToSlide,
        effect: SlideEffect(
          dotHeight: 10.0,
          dotWidth: 20.0,
          dotColor: Colors.red,
        ),
      ),
    );

Widget buildButtons({bool stretch = false}) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
          ),
          child: Icon(
            Icons.arrow_back,
            size: 32.0,
          ),
          onPressed: previous,
        ),
        stretch
            ? Spacer()
            : SizedBox(
                width: 32.0,
              ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
          ),
          child: Icon(
            Icons.arrow_forward,
            size: 32.0,
            color: Colors.black,
          ),
          onPressed: next,
        ),
      ],
    );
void animateToSlide(int index) => controller.animateToPage(index);

void previous() => controller.previousPage(
      duration: Duration(seconds: 2),
    );

void next() => controller.nextPage(
      duration: Duration(seconds: 2),
    );
