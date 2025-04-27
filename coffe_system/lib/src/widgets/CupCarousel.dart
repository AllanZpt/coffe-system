import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffe_system/src/model/cup.dart';
import 'package:flutter/material.dart';

class CupCarousel extends StatelessWidget {
  final List<CupModel> cupTypes;
  const CupCarousel({required this.cupTypes, super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: cupTypes.map((cup) => Image.asset(cup.imageUrl)).toList(),
      options: CarouselOptions(height: 350, enlargeCenterPage: true),
    );
  }
}
