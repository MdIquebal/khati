// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class CarouselSlider extends StatefulWidget {
//   @override
//   _CarouselSliderState createState() => _CarouselSliderState();
// }

// final controller = CarouselController();
// int activeIndex = 0;
// List imgList = [
//   'https://images.pexels.com/photos/53141/rose-red-blossom-bloom-53141.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
//   'https://images.pexels.com/photos/5723626/pexels-photo-5723626.jpeg?cs=srgb&dl=pexels-sarah-dauchy-5723626.jpg&fm=jpg',
//   'https://images.pexels.com/photos/53141/rose-red-blossom-bloom-53141.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
// ];

// final List<Widget> imageSliders = imgList
//     .map((item) => Container(
//           child: Container(
//             margin: EdgeInsets.all(4.0),
//             child: ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(2.0)),
//                 child: Stack(
//                   children: <Widget>[
//                     Image.asset(item, fit: BoxFit.fill, width: 600.0),
//                     Positioned(
//                       bottom: 0.0,
//                       left: 0.0,
//                       right: 0.0,
//                       child: Container(
//                         padding: EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20.0),
//                       ),
//                     ),
//                   ],
//                 )),
//           ),
//         ))
//     .toList();

// class _CarouselSliderState extends State<CarouselSlider> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       child: Center(
//         child: CarouselSlider(
//           options: CarouselOptions(
//             autoPlay: true,
//             aspectRatio: 3,
//             enlargeCenterPage: true,
//           ),
//           items: imageSliders,
//         ),
//       ),
//     );
//   }
// }

// Widget buildImage(String urlImages, int index) => Container(
//       margin: EdgeInsets.symmetric(horizontal: 12.0),
//       width: 400,
//       color: Colors.grey,
//       child: Image.network(urlImages, fit: BoxFit.cover),
//     );

// Widget buildIndicator() => AnimatedSmoothIndicator(
//       activeIndex: activeIndex,
//       count: imgList.length,
//       onDotClicked: animateToSlide,
//       effect: JumpingDotEffect(dotHeight: 20.0, dotWidth: 20.0),
//     );

// Widget buildButtons({bool stretch = false}) => Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
//           ),
//           child: Icon(
//             Icons.arrow_back,
//             size: 32.0,
//           ),
//           onPressed: previous,
//         ),
//         stretch
//             ? Spacer()
//             : SizedBox(
//                 width: 32.0,
//               ),
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
//           ),
//           child: Icon(
//             Icons.arrow_forward,
//             size: 32.0,
//             color: Colors.white,
//           ),
//           onPressed: next,
//         ),
//       ],
//     );
// void animateToSlide(int index) => controller.animateToPage(index);

// void previous() => controller.previousPage(
//       duration: Duration(seconds: 2),
//     );

// void next() => controller.nextPage(
//       duration: Duration(seconds: 2),
//     );
