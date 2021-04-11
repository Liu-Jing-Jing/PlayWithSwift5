import 'package:flutter/material.dart';
import 'package:hello_world/Classes/utils/simple_toast.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class CommonToast {
  static showToast(BuildContext context, String msg) {
    Toast.show(context, msg);
    //Toast.showToast(msg: msg, textColor: Colors.red);
  }
}
