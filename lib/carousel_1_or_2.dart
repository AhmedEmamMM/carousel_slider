import 'package:carousel_slider/features/carousel_slider_1/view/carousel_slider_1.dart';
import 'package:carousel_slider/features/carousel_slider_2/view/carousel_slider_2.dart';
import 'package:flutter/material.dart';

class CarouselOneOrTow extends StatefulWidget {
  const CarouselOneOrTow({super.key});

  @override
  State<CarouselOneOrTow> createState() => _Carousel1Or2State();
}

class _Carousel1Or2State extends State<CarouselOneOrTow> {
  bool isCarouselOne = true;

  void toggelBewteerOneAndTow() {
    setState(() {
      isCarouselOne = !isCarouselOne;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isCarouselOne) {
      return MyCarouselSlider(onPressed: toggelBewteerOneAndTow);
    } else {
      return MyCarouselSlider2(onPressed: toggelBewteerOneAndTow);
    }
  }
}
