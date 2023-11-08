import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import 'onhover_container.dart';

Widget ourBestOfferContainer(double height, double width) {
  return SizedBox(
    height: height*.70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .01),
          child: OnHoverContainer1(
            child: Container(
              alignment: Alignment.bottomCenter,
              height: height * .55,
              width: width * .18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/c1.jpg',
                    ),
                    fit: BoxFit.fill,
                  )),
              child: Container(
                // height: height * .20,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.8),

                      Colors.black.withOpacity(0.2)
                    ],
                    begin: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Constants.whight),
                    ),
                    Text(
                      'Subtitle',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Constants.whight),
                    ),
                    SizedBox(height: height*.05,)
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .01),
          child: OnHoverContainer1(
            child: Container(
              alignment: Alignment.bottomCenter,
              height: height * .55,
              width: width * .18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/c2.jpg',
                    ),
                    fit: BoxFit.fill,
                  )),
              child: Container(
                // height: height * .20,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.8),

                      Colors.black.withOpacity(0.2)
                    ],
                    begin: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Constants.whight),
                    ),
                    Text(
                      'Subtitle',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Constants.whight),
                    ),
                    SizedBox(height: height*.05,)
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .01),
          child: OnHoverContainer1(

            child: Container(
              alignment: Alignment.bottomCenter,
              height: height * .55,
              width: width * .18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/c3.jpg',
                    ),
                    fit: BoxFit.fill,
                  )),
              child: Container(
                // height: height * .20,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.8),

                      Colors.black.withOpacity(0.2)
                    ],
                    begin: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Constants.whight),
                    ),
                    Text(
                      'Subtitle',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Constants.whight),
                    ),
                    SizedBox(height: height*.05,)
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .01),
          child: OnHoverContainer1(

            child: Container(
              alignment: Alignment.bottomCenter,
              height: height * .55,
              width: width * .18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/c4.jpg',
                    ),
                    fit: BoxFit.fill,
                  )),
              child: Container(
                // height: height * .20,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.8),

                      Colors.black.withOpacity(0.2)
                    ],
                    begin: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Constants.whight),
                    ),
                    Text(
                      'Subtitle',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Constants.whight),
                    ),
                    SizedBox(height: height*.05,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}