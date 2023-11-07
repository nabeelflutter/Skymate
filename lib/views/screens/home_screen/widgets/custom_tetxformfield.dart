import 'package:flutter/material.dart';
class CustomTextFormField extends StatefulWidget {
  dynamic hintText;
  double? width;
  String? initialValue;
  VoidCallback? function;
  var onSave;
  int? maxLine;
  TextEditingController? controller;
  double? height;
   CustomTextFormField({super.key, this.onSave,this.controller, this.function,this.hintText, this.width, this.initialValue, this.maxLine,this.height});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: widget.height,
      width: widget.width,
      child: TextFormField(
        onSaved: widget.onSave,
        onTap: widget.function,
        controller: widget.controller,
        maxLines: widget.maxLine,
        initialValue: widget.initialValue,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          label: widget.hintText,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          ),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF9531b7)))
        ),
      ),
    );
  }
}
