import 'package:flutter/material.dart';

class moviesSlider extends StatelessWidget {
  const moviesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context,index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.amber,
                  height: 200,
                  width: 100,

                ),
              ),
            );
          },
        )

    );
  }
}