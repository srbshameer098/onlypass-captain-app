import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:untitled7/UI/s1.dart';

import '../Register/Authentication.dart';

class Splash{
  void islogin(BuildContext context){
    final auth =FirebaseAuth.instance;
    final user = auth.currentUser;
    if (user !=null){
      Timer(const Duration( milliseconds: 2500),()=> Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const S1()), (Route<dynamic> route) => false,
      ));
    }else{
      Timer(const Duration( seconds: 1 ),()=> Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const Authentification()), (Route<dynamic> route) => false,
      ));
    }

  }
}