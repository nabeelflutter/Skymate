
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ManuallyControlledSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState();
  }
}

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  late final CarouselController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = CarouselController();
  }
  bool onHoverback = false;
  bool onHoverNext = false;

@override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 400,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/im.jpg'),fit: BoxFit.fill)),
        ),
        CarouselSlider(
          items:[
            Stack(children: [
              Container(
                child: Center(
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Container(
                      height: 300,
                      width: 800,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white)
                      ),
                    ),
                  ),
                ),
              ),

            ],)
          ],
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true, height: 450),
          carouselController: _controller,
        ),
        Positioned(
          bottom: 200,
          child: SizedBox(
            height: 80,
            width: 80,
            child: ElevatedButton(

              onHover: (value){
                setState(() {
                  onHoverback = value;
                });
              } ,
              style: ElevatedButton.styleFrom(
                  elevation: 1,
                  backgroundColor:onHoverback? Colors.white:Color(0xFFc724b1)
              ),
              onPressed: () => _controller!.previousPage(),
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 200,
          child: SizedBox(
            height: 80,
            width: 80,
            child: ElevatedButton(

              onHover: (value){
                setState(() {
                  onHoverNext = value;
                });
              } ,
              style: ElevatedButton.styleFrom(
                  elevation: 1,
                  backgroundColor:onHoverNext? Colors.white:Color(0xFFc724b1)
              ),
              onPressed: () => _controller!.nextPage(),
              child: Icon(Icons.arrow_forward),
            ),
          ),
        ),
      ],
    );
  }
}


