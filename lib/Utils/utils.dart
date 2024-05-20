

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {



  void toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: Color(0xff888888),
        textColor: Color(0xff000000),
        fontSize: 16.0
    );
  }
}