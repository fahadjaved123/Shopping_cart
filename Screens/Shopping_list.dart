import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_card/Screens/List_items.dart';
class Shopinglist extends StatefulWidget {
  const Shopinglist({super.key});

  @override
  State<Shopinglist> createState() => _ShopinglistState();
}

class _ShopinglistState extends State<Shopinglist> with SingleTickerProviderStateMixin{
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(seconds:  5),
        animationBehavior: AnimationBehavior.preserve);
    _controller.forward();
    Future.delayed(Duration(minutes: 10),(){
      _controller.stop();
    });
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Lottie.network('https://lottie.host/c5e54bd4-c222-42d1-be7d-f1d328adf6bf/r0e7vVejpY.json',
                height: 300,width: 400),
          ),

          Text('We deliver \n grocery at your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40,
                  fontWeight: FontWeight.bold,fontFamily: 'play'),),
         Spacer(),
          Text('Groceer give you fresh vegitables and fruits,'
              '\n order fresh items from Groceer',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'play',
              fontSize: 15,fontWeight: FontWeight.bold),),
          Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context)=>ListItems()));
            },
            child: Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 2.0),
                    blurRadius: 2.0,
                    blurStyle: BlurStyle.inner,
                  )
                ]
              ),
              child: Center(
                child: Text('Get Started',
                  style: TextStyle(fontSize: 25,color: Colors.white,fontFamily: 'play'),),
              ),

            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
