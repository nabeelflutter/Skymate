import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tech_cscommunity/constants/constants.dart';

import '../custom_box/show_box.dart';
class StaggeredGridViewScreen extends StatefulWidget {
  const StaggeredGridViewScreen({super.key});
  @override
  State<StaggeredGridViewScreen> createState() =>
      _StaggeredGridViewScreenState();
}
class _StaggeredGridViewScreenState extends State<StaggeredGridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 200),
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        children: [
          StaggeredGridTile.count(
            child:  GestureDetector(
              onTap: () async {
                await GeneralDialogs.showLoginDialogue(context);
              },
              child: CardWithShadowOnHover(
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),image: DecorationImage(image: AssetImage('assets/images/g1.jpg'),fit: BoxFit.fill)
                      ),
                      child: Column(children: [
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('Create your Dubai experence',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Chusion',
                              fontSize: 25,
                            ),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('Learn more',style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Chusion',
                              fontSize: 14,
                            ),),
                          ),
                        )
                      ],),
                    ),
                  ),
                ),
            ),
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
            ),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: imageConstainer("assets/images/g2.jpg")),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: imageConstainer("assets/images/g3.jpg")),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: imageConstainer("assets/images/g4.jpg")),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: imageConstainer("assets/images/g5.jpg")),
        ],
      ),
    );
  }
  imageConstainer(imgPath) {
    return GestureDetector(
      onTap: () async {
        await GeneralDialogs.showLoginDialogue(context);
      },
      child: CardWithShadowOnHover(
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),image: DecorationImage(image: AssetImage(imgPath),fit: BoxFit.fill)
            ),
            child: Column(children: [
              SizedBox(height: 20,),
              Text('First Class',style: TextStyle(
                fontFamily: 'Chusion',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),),
              SizedBox(height: 20,),
              Text('Learn more',style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),)
            ],),
          ),
        ),
      ),
    );
  }
}
class CardWithShadowOnHover extends StatefulWidget {
  final Widget child;
  final double shadowElevation;

  CardWithShadowOnHover({
    required this.child,
    this.shadowElevation = 5.0,
  });

  @override
  _CardWithShadowOnHoverState createState() => _CardWithShadowOnHoverState();
}

class _CardWithShadowOnHoverState extends State<CardWithShadowOnHover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: isHovered
              ? [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: widget.shadowElevation,
            ),
          ]
              : [],
        ),
        child: widget.child,
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}