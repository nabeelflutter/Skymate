import 'package:flutter/material.dart';
class CustomTextFormField extends StatefulWidget {
  dynamic hintText;
  double? width;
  String? initialValue;
  VoidCallback? function;
  var onSave;
  var borderRadius;
  int? maxLine;
  TextEditingController? controller;
  double? height;
  Color? textColor;
   CustomTextFormField({super.key,this.textColor,this.borderRadius, this.onSave,this.controller, this.function,this.hintText, this.width, this.initialValue, this.maxLine,this.height});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      width: widget.width,
      child: TextFormField(
        style: TextStyle(color: widget.textColor),
        textAlign: TextAlign.start,
        onSaved: widget.onSave,
        onTap: widget.function,
        controller: widget.controller,
        maxLines: widget.maxLine,
        initialValue: widget.initialValue,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          labelStyle: TextStyle( color: widget.textColor,fontSize: 16),
          isDense: true,
          label: widget.hintText,
          enabledBorder: OutlineInputBorder(

              borderRadius:widget.borderRadius ,
              borderSide: BorderSide(color: Colors.grey.shade500)
          ),
          border: OutlineInputBorder(
            borderRadius:widget.borderRadius ,
            borderSide: BorderSide(color: Colors.grey.shade500)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius:widget.borderRadius ,
              borderSide: BorderSide(color: Color(0xFF9531b7)))
        ),
      ),
    );
  }
}
