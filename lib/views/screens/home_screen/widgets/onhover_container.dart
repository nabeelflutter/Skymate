import 'package:flutter/material.dart';
class OnHoverContainer extends StatefulWidget {
  final Widget child;
  final double scale;
  const OnHoverContainer({super.key,required this.child,required this.scale});

  @override
  State<OnHoverContainer> createState() => _OnHoverContainerState();
}

class _OnHoverContainerState extends State<OnHoverContainer> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(widget.scale);
    final transform = isHovered? hoveredTransform:Matrix4.identity();
    return MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
            duration: Duration(microseconds: 200),
            transform: transform,
            child: widget.child));
  }
  void onEntered(bool isHovered) => setState(() {
    this.isHovered = isHovered;
  });
}

class OnHoverContainer1 extends StatefulWidget {
  final Widget child;
  final double scale;
  const OnHoverContainer1({super.key,required this.child,required this.scale});

  @override
  State<OnHoverContainer1> createState() => _OnHoverContainer1State();
}

class _OnHoverContainer1State extends State<OnHoverContainer1> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..translate(0,-8,0);
    final transform = isHovered? hoveredTransform:Matrix4.identity();
    return MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
            duration: Duration(microseconds: 200),
            transform: transform,
            child: widget.child));
  }
  void onEntered(bool isHovered) => setState(() {
    this.isHovered = isHovered;
  });
}


