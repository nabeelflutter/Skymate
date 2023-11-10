import 'dart:async';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_box.dart';
class GeneralDialogs {

  static Future showLoginDialogue(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return  CustomDialogBox(
          title: 'title',
          descriptions: 'descriptions',
          text: 'text',
        );
      },
    );
  }


}


