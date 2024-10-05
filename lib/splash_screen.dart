

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multi_rule_based_app/home_screen.dart';
import 'package:multi_rule_based_app/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Image(
        height: double.infinity,
          fit: BoxFit.fitHeight,
          image: NetworkImage('https://images.pexels.com/photos/1028598/pexels-photo-1028598.jpeg?auto=compress&cs=tinysrgb&w=600')),
    );
  }
}
