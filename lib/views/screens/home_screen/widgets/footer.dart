import 'package:flutter/material.dart';
import 'package:tech_cscommunity/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'TextWithHoverContainer.dart';
import 'ishover_elevation_card.dart';
import 'onhover_color_changebutton.dart';
import 'onhover_container.dart';
import 'onhover_text.dart';

Widget footer(){
  return Container(
    height: 400,
    color: const Color(0xff333333),
    width: double.infinity,
    child: Row(
      children: [
      const Expanded(flex: 1,child: SizedBox()),
      Expanded(
          flex: 3,
          child: Container(
        height: 400,

        color: const Color(0xff333333),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('Subscribe to our special offers',style: TextStyle(
              fontFamily: 'Chusion',
              fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20,color: Constants.whight,),),
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.only(left: 45),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Save with our latest fares and offers.',style: TextStyle(color: Color(
                      0xffbcc1c5)),),
                ),
              ),
              const SizedBox(height: 10,),
               Padding(
                padding: EdgeInsets.only(left: 40),
                child: Align(
                  alignment: Alignment.topLeft,
                  child:  TextWithHoverContainer(
                    text: 'Unsubscribe or change your preferences',
                    containerColor: Colors.grey.withOpacity(0.5), // Container color
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(height: 40,width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Constants.whight,
                      ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Email address',style: TextStyle(fontSize: 16),),),
                        ),
                      ),
                      HoverColorAndTextColorButton(
                        text: 'Subscibe',
                        defaultButtonColor: const Color(0xff333333), // Default button color
                        hoverButtonColor: Constants.whight, // Hover button color
                        defaultTextColor: Constants.whight, // Default text color
                        hoverTextColor: Colors.black, // Hover text color
                        duration: const Duration(milliseconds: 300), // Animation duration
                      )

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('For details on how we use your information, please see our',style: TextStyle(color: Color(0xffbcc1c5)),)),
              ),
              const SizedBox(height: 10,),
               Padding(
                padding: EdgeInsets.only(left: 40),                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Text('Our',style: TextStyle(color: Color(0xffbcc1c5)),),
                      SizedBox(width: 5,),
                      TextWithHoverContainer(
                        text: 'privacy policy.',
                        containerColor: Colors.grey.withOpacity(0.5), // Container color
                      ),


                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Card(
                      color: const Color(0xff333333),
                        elevation: 0,
                        child: SvgPicture.asset('assets/images/fi1.svg',))),
              )
            ],),
        ),

      )),
      const SizedBox(width: 20,),
      Expanded(
          flex: 3,
          child: Container(
        height: 400,
        color: const Color(0xff333333),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(height: 35,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text('Emirates App',style: TextStyle(
                    fontFamily: 'Chusion',
                    fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20,color: Constants.whight,),)),
              const SizedBox(height: 15,),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Book and manage your flights on the go.',style: TextStyle(color: Color(0xffbcc1c5)),)),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/images/app.svg'),
                  const SizedBox(width: 20,),
                  SvgPicture.asset('assets/images/play.svg'),

                ],
              ),
              const SizedBox(height: 90,),
              Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset('assets/images/sec.svg',))
            ],),
        ),

      )),
      const SizedBox(width: 20,),

      Expanded(
          flex: 2,
          child: Container(
        height: 400,
        color: const Color(0xff333333),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(

            children: [
              const SizedBox(height: 40,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text('Connect with us',style: TextStyle(
                    fontFamily: 'Chusion',
                    fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20,color: Constants.whight,),)),
              const SizedBox(height: 15,),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Share your Emirates experience.',style: TextStyle(color: Color(0xffbcc1c5)),)),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                      elevation: 0,
                      child: Image.asset('assets/images/facebook (1).png',scale: 15,)),
                  const SizedBox(width: 3,),
                  Card(child: Image.asset('assets/images/twitter-sign.png',scale: 15,)),
                  const SizedBox(width: 3,),
                  Card(child: Image.asset('assets/images/youtube.png',scale: 15,)),
                  const SizedBox(width: 3,),
                  Card(child: Image.asset('assets/images/instagram.png',scale: 15,)),
                  const SizedBox(width: 3,),
                  Card(child: Image.asset('assets/images/twitter-sign.png',scale: 15,)),
                ],
              ),
               const SizedBox(height: 75,),
               Align(
                   alignment: Alignment.topLeft,
                   child: SvgPicture.asset('assets/images/thir.svg'))
            ],),
        ),

      )),
        const Expanded(flex: 1,child: SizedBox()),
    ],),
  );
}