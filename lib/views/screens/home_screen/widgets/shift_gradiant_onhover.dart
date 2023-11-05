import 'package:flutter/material.dart';

class GradientOnHoverButton extends StatefulWidget {
  final Widget child;
  final List<Color> defaultGradient;
  final List<Color> hoverGradient;
  final Duration duration;

  GradientOnHoverButton({
    required this.child,
    required this.defaultGradient,
    required this.hoverGradient,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  _GradientOnHoverButtonState createState() => _GradientOnHoverButtonState();
}

class _GradientOnHoverButtonState extends State<GradientOnHoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final defaultDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(colors: widget.defaultGradient),
    );

    final hoverDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(colors: widget.hoverGradient),
    );

    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: widget.duration,
        decoration: isHovered ? hoverDecoration : defaultDecoration,
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
