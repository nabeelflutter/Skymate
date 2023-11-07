import 'dart:ui';

import 'package:flutter/material.dart';

class HoverElevationCard extends StatefulWidget {
  final Widget child;
  final double defaultElevation;
  final double hoverElevation;
  final Duration duration;

  HoverElevationCard({
    required this.child,
    this.defaultElevation = 0.0,
    this.hoverElevation = 4.0,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  _HoverElevationCardState createState() => _HoverElevationCardState();
}

class _HoverElevationCardState extends State<HoverElevationCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: widget.duration,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, isHovered ? widget.hoverElevation : widget.defaultElevation),
              blurRadius: 6.0,
            ),
          ],
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


