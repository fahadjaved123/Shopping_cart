import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_card/Screens/Shopping_list.dart';
import 'List_items.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8),(){
      Navigator.push(
          context, MaterialPageRoute(
          builder: (context)=>Shopinglist()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network('https://lottie.host/b8a79bee-a748-4e30-8fce-5f6c6f351541/SF9Mr9GXmh.json'),
      ),
    );
  }
}
