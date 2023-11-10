import 'package:flutter/material.dart';

class MyFAB extends StatefulWidget {
  @override
  _MyFABState createState() => _MyFABState();
}

class _MyFABState extends State<MyFAB> {
  bool isHovered = false;
  bool showBox = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color:  Color(0xFF7819d3),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    //bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(100))),
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: Color(0xFF7819d3),
              onPressed: () {
                showBox = true;
              },
              child: isHovered?Image.asset('assets/images/smile.png',height: 30,width: 40,color:Colors.white): Image.asset('assets/images/option.png',height: 40,width: 40,color:Colors.white),
            ),
          ),
          if (isHovered)
            Padding(
              padding: const EdgeInsets.only(right: 70, bottom: 0),
              child: Container(
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3))
                    ]),
                child: Builder(
                  builder: (context) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Align(
                            alignment:Alignment.topLeft,
                            child: Text('Need help?',style: TextStyle(fontFamily: 'Chusion'),)),
                      ),
                      Text('Chat with our support team.',style: TextStyle(color: Colors.grey),)
                    ],);
                  }
                ),
              ),
            ),
          showBox == true?
            Positioned(
              child: GestureDetector(
                  onTap: (){
                    showBox = false;
                  },
                  child: Container(height: 100,width: 100,color: Colors.green,)),
            ):SizedBox()
        ],
      ),
    );
  }
}

class MyNewFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/whatsapp.png',scale: 10,);
  }
}