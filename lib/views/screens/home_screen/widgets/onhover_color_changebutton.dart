import 'package:flutter/material.dart';
import 'package:text_hover/constants.dart';

class HoverColorAndTextColorButton extends StatefulWidget {
  final String text;
  final Color defaultButtonColor;
  final Color hoverButtonColor;
  final Color defaultTextColor;
  final Color hoverTextColor;
  final Duration duration;
  double width;

  HoverColorAndTextColorButton({
    required this.text,
    required this.defaultButtonColor,
    required this.hoverButtonColor,
    required this.defaultTextColor,
    required this.hoverTextColor,
    required this.width,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  _HoverColorAndTextColorButtonState createState() => _HoverColorAndTextColorButtonState();
}

class _HoverColorAndTextColorButtonState extends State<HoverColorAndTextColorButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        height: 40,width: widget.width,
        duration: widget.duration,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: Colors.white),
          color: isHovered ? widget.hoverButtonColor : widget.defaultButtonColor,
        ),
        child: Center(
          child: AnimatedDefaultTextStyle(
            duration: widget.duration,
            style: TextStyle(
              color: isHovered ? widget.hoverTextColor : widget.defaultTextColor,
            ),
            child: Text(widget.text,style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
