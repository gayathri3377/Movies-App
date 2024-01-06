import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title:Text('MOVIES APP',style: TextStyle(color: Colors.red),),
            centerTitle: true,
          ),
          body:SingleChildScrollView(
            physics:const BouncingScrollPhysics(),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Trending Movies',style: TextStyle(fontSize: 25),),
                  const SizedBox(height: 20),
                  trending_slider(),
                  const SizedBox(height: 30,),
                  Text(
                    'Top Rated Movies',
                    style: TextStyle(color: Colors.black,fontSize: 25),
                  ),
                  const SizedBox(height: 30,),
                  moviesSlider(),
                  const SizedBox(height: 30,),
                  Text(
                    'Up Coming Movies',
                    style: TextStyle(color: Colors.black,fontSize: 25),
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
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

                  )],
              ),
            )
          )



    )

    );
  }
}

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
