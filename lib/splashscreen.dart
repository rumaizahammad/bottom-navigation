import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_trial/homepage.dart';

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
    Timer(Duration(seconds: 3),
     ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  MainPage()),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child:  Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/2044px-WhatsApp.svg.png',width: 100,height: 100,),),
    );
  }
}