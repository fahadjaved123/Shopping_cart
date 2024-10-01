import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_card/Screens/Shopping_list.dart';
import 'package:shopping_card/Screens/Splash_screen.dart';

import 'Provider/ItemsModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
        create: (_)=>ItemsModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

        ),
        home: SplashScreen(),
      ) ,
    );

  }
}

