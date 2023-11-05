
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tech_cscommunity/constants/constants.dart';
import 'package:animate_do/animate_do.dart';
class ManuallyControlledSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState();
  }
}

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  late final CarouselController? _controller;
  late final CarouselController? _backController;
  @override
  void initState() {
    super.initState();
    _controller = CarouselController();
    _backController = CarouselController();
  }

@override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
    CarouselSlider(
      carouselController: _backController,
    options: CarouselOptions(
    height: height*.70,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        autoPlay: true
      // autoPlay: false,
    ),
    items:[
    Container(height: height,
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/im.jpg'),fit: BoxFit.fill)),
    ),

    ]
    ),
        CarouselSlider(
          items:[
            Container(
              height: height*.50,
              width: width*.90,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.5),
                borderRadius: BorderRadius.circular(8),

              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInDown(
                        duration: Duration(milliseconds: 1000),
                        delay: Duration(seconds: 4),
                        child: Text('The net work that gets you',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Constants.whight),)),
                    FadeInUp(
                        duration: Duration(milliseconds: 1000),
                        delay: Duration(seconds: 4),
                        child: Text('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate',style: TextStyle(fontSize: 20,color: Constants.whight),)),
                  ],
                ),
              ),
            )
          ],
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true, height: height*.60),
          carouselController: _controller,
        ),
      ],
    );
  }
}



