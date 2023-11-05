import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import 'onhover_container.dart';

Widget ourBestOfferContainer(double height, double width) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .01),
        child: OnHoverContainer1(
          scale: 1.009,
          child: Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              height: height * .60,
              width: width * .20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/m1.webp',
                    ),
                    fit: BoxFit.fill,
                  )),
              child: Container(
                height: height * .20,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
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
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .01),
        child: OnHoverContainer1(
          scale: 1.009,
          child: Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              height: height * .60,
              width: width * .20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/m1.webp',
                    ),
                    fit: BoxFit.fill,
                  )),
              child: Container(
                height: height * .20,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
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
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .01),
        child: OnHoverContainer1(
          scale: 1.009,
          child: Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              height: height * .60,
              width: width * .20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/m1.webp',
                    ),
                    fit: BoxFit.fill,
                  )),
              child: Container(
                height: height * .20,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
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
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .01),
        child: OnHoverContainer1(
          scale: 1.009,
          child: Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              height: height * .60,
              width: width * .20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/m1.webp',
                    ),
                    fit: BoxFit.fill,
                  )),
              child: Container(
                height: height * .20,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
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
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}