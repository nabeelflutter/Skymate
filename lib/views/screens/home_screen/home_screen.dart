import 'package:flutter/material.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/customslider.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_container.dart';

import '../../../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool homeHoverer = false;
  bool aboutHoverer = false;
  bool contactHoverer = false;
  bool servicesHoverer = false;
  bool travelHoverer = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .15),
              child: Row(
                children: [
                  Container(
                    height: height * .04,
                    width: width * .06,
                    color: const Color(0xFF0081ab),
                    child: Center(
                      child: Text('Contact :',
                          style: TextStyle(
                              color: Constants.whight,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text('abc@gmail.com',
                      style: TextStyle(
                        color: Constants.whight,
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Text('020959878483',
                      style: TextStyle(
                        color: Constants.whight,
                      )),
                ],
              ),
            ),
            height: height * .04,
            width: width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF03a4cb),
                  Color(0xFF03a4cb),
                  Color(0xFF3776c6),
                  Color(0xFF6848bf)
                ],
                // Change these colors as needed
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  0), // Set the radius to 0 for rectangular shape
            ),
            elevation: 2,
            child: Container(
              alignment: Alignment.bottomRight,
              color: const Color(0xFFffffff),
              height: height * .08,
              child:Padding(
                padding:  EdgeInsets.only(left: width*.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset('assets/images/img.png',)),
                    Padding(
                      padding:  EdgeInsets.only(right: width*.10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  homeHoverer = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  homeHoverer = false;
                                });
                              },
                              child: Container(
                                child: const Text(
                                  'Home',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            homeHoverer?Container(height: 5,decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(colors: [
                                Color(0xFFc724b1),
                                Color(0xFF8d34b9),
                                Color(0xFFc724b1),
                              ], begin: Alignment.centerLeft,
                                end: Alignment.centerRight,)
                            ),width:40):const SizedBox(),
                          ],
                        ),
                          const SizedBox(
                            width: 15,
                          ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  aboutHoverer = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  aboutHoverer = false;
                                });
                              },
                              child: Container(
                                child: const Text(
                                  'ABOUT US',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            aboutHoverer?Container(height: 5,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: const LinearGradient(colors: [
                                  Color(0xFFc724b1),
                                  Color(0xFF8d34b9),
                                  Color(0xFFc724b1),
                                ], begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,)
                            ),width:60):const SizedBox()
                          ],
                        ),
                          const SizedBox(
                            width: 15,
                          ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  servicesHoverer = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  servicesHoverer = false;
                                });
                              },
                              child: Container(
                                child: const Text(
                                  'OUR SERVICES',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            servicesHoverer?Container(height: 5,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: const LinearGradient(colors: [
                                  Color(0xFFc724b1),
                                  Color(0xFF8d34b9),
                                  Color(0xFFc724b1),
                                ], begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,)
                            ),width:80):const SizedBox()
                          ],
                        ),
                          const SizedBox(
                            width: 15,
                          ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  travelHoverer = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  travelHoverer = false;
                                });
                              },
                              child: Container(
                                child: const Text(
                                  'WHY HARIS TRAVELS',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            travelHoverer?Container(height: 5,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: const LinearGradient(colors: [
                                  Color(0xFFc724b1),
                                  Color(0xFF8d34b9),
                                  Color(0xFFc724b1),
                                ], begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,)
                            ),width:120):const SizedBox()
                          ],
                        ),
                          const SizedBox(
                            width: 15,
                          ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  contactHoverer = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  contactHoverer = false;
                                });
                              },
                              child: Container(
                                child: const Text(
                                  'CONTACT US',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            contactHoverer?Container(height: 5,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: const LinearGradient(colors: [
                                  Color(0xFFc724b1),
                                  Color(0xFF8d34b9),
                                  Color(0xFFc724b1),
                                ], begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,)
                            ),width:70):const SizedBox()
                          ],
                        ),
                      ],),
                    ),
                  ],
                ),
              )
            ),
          ),
           Expanded(child: Container(child: SingleChildScrollView(
             child: Column(children: [
               SizedBox(height: 20,),
               ManuallyControlledSlider(),
               SizedBox(height: height*.05,),
               Center(child: Text('Our best offers',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
               SizedBox(height: height*.05,),
               ourBestOfferContainer(height,width),
               SizedBox(height: height*.05,),
               Center(child: Text('Our best offers',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
               SizedBox(height: height*.05,),
               ourBestOfferContainer(height,width),
             ],),
           ),))
        ],
      ),
    );
  }
}
Widget ourBestOfferContainer(double height,double width){
 return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      OnHoverContainer(
        child: Container(
          width: width*.15,
          height: height*.45,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                //   AssetImage('assets/images/shoes.png')
                image: AssetImage('assets/images/m1.webp')),
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.9)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 0, 0, 2.5],
              ),
            ),
            //padding: const EdgeInsets.only(bottom: 14.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      'Get 20% off select Power Plans.',
                      //  pickOfTheDay[index].name,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,color: Constants.whight),
                      textAlign: TextAlign.start,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
      OnHoverContainer(
        child: Container(
          width: width*.15,
          height: height*.45,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                //   AssetImage('assets/images/shoes.png')
                image: AssetImage('assets/images/m2.jpg')),
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.9)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 0, 0, 2.5],
              ),
            ),
            //padding: const EdgeInsets.only(bottom: 14.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      '20% off for up to 6 months on home wireless plans',
                      //  pickOfTheDay[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Constants.whight),
                      textAlign: TextAlign.start,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
      OnHoverContainer(
        child: Container(
          width: width*.15,
          height: height*.45,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                //   AssetImage('assets/images/shoes.png')
                image: AssetImage('assets/images/m3.jpg')),
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.9)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 0, 0, 2.5],
              ),
            ),
            //padding: const EdgeInsets.only(bottom: 14.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      '40% off on Unlimited National Data Power Plans with Esaad.',
                      //  pickOfTheDay[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Constants.whight),
                      textAlign: TextAlign.start,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
      OnHoverContainer(
        child: Container(
          width: width*.15,
          height: height*.45,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                //   AssetImage('assets/images/shoes.png')
                image: AssetImage('assets/images/m4.jpg')),
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.9)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 0, 0, 2.5],
              ),
            ),
            //padding: const EdgeInsets.only(bottom: 14.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      'Save big with yearly prepaid Flexi Plans.',
                      //  pickOfTheDay[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Constants.whight),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}