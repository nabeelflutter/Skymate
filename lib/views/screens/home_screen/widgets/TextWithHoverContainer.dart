import 'dart:ui';

import 'package:flutter/material.dart';

class TextWithHoverContainer extends StatefulWidget {
  final String text;
  final Color containerColor;

  TextWithHoverContainer({required this.text, this.containerColor = Colors.blue});

  @override
  _TextWithHoverContainerState createState() => _TextWithHoverContainerState();
}

class _TextWithHoverContainerState extends State<TextWithHoverContainer> {
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
            widget.text,
            style: TextStyle(
              decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.solid,
              decorationColor: Color(0xffbcc1c5),
              color:  Color(0xffbcc1c5),
            ),
          ),
          if (isHovered)
            Positioned.fill(
              child: Container(
                color: widget.containerColor,
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
