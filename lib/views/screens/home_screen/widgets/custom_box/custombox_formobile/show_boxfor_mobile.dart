import 'dart:async';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../custom_box.dart';
import 'custombox_formobile.dart';

class GeneralDialogsForMobile {

  static Future showLoginDialogue(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return  CustomDialogBoxForMobile(
          title: 'title',
          descriptions: 'descriptions',
          text: 'text',
        );
      },
    );
  }


}


