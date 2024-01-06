import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class trending_slider extends StatelessWidget {
  const trending_slider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child:CarouselSlider.builder(
          options:CarouselOptions(
              height: 300,
              autoPlay: true,
              viewportFraction: 0.55,
              pageSnapping: true,
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(seconds: 1)
          ),
          itemCount:10, itemBuilder: (BuildContext context, int index, int realIndex) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child:Container(
                height: 300,
                width: 200,
                color: Colors.amber,
              ));
        },

        )
    );
  }
}
