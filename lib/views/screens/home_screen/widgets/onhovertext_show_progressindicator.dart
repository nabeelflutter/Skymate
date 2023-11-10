
import 'package:flutter/material.dart';

class TextWithHoverProgressIndicator extends StatefulWidget {
  final String text;
  final Color containerColor;

  TextWithHoverProgressIndicator({required this.text, this.containerColor = Colors.blue});

  @override
  _TextWithHoverProgressIndicatorState createState() => _TextWithHoverProgressIndicatorState();
}

class _TextWithHoverProgressIndicatorState extends State<TextWithHoverProgressIndicator> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            widget.text,style: TextStyle(color: Color(0xffd2af6d),fontFamily: 'Chusion'),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: isHovered ? 1 : 0),
              duration: Duration(microseconds: 1000), // Adjust the duration as needed
              builder: (context, value, child) {
                return Container(
                  width: value * MediaQuery.of(context).size.width,
                  height: 3, // Adjust the height of the animated container
                  color: widget.containerColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Text with Hover Container'),
      ),
      body: Center(
        child: TextWithHoverProgressIndicator(
          text: 'Hover me!',
          containerColor: Colors.blue,
        ),
      ),
    ),
  ));
}

