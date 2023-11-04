import 'package:flutter/material.dart';
class OnHoverContainer extends StatefulWidget {
  final Widget child;
  const OnHoverContainer({super.key,required this.child});

  @override
  State<OnHoverContainer> createState() => _OnHoverContainerState();
}

class _OnHoverContainerState extends State<OnHoverContainer> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.1);
    final transform =isHovered? hoveredTransform:Matrix4.identity();
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
