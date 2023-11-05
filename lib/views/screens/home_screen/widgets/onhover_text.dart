import 'package:flutter/cupertino.dart';

class HoverTextColorChanger extends StatefulWidget {
  final Widget child;
  final Color defaultColor;
  final Color hoverColor;
  final Duration duration;

  HoverTextColorChanger({
    required this.child,
    required this.defaultColor,
    required this.hoverColor,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  _HoverTextColorChangerState createState() => _HoverTextColorChangerState();
}

class _HoverTextColorChangerState extends State<HoverTextColorChanger> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedDefaultTextStyle(
        style: TextStyle(
          color: isHovered ? widget.hoverColor : widget.defaultColor,
        ),
        duration: widget.duration,
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

