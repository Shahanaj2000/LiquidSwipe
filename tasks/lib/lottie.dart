//! Lottie with Start and Stop

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.red
    ),
    home: MyLottie(),
  ));
}

class MyLottie extends StatefulWidget {
  const MyLottie({super.key});

  @override
  State<MyLottie> createState() => _MyLottieState();
}

class _MyLottieState extends State<MyLottie> with SingleTickerProviderStateMixin {

  //! Controller for the lottie image
  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  //! Defalt 
  bool boolmarked = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            if (boolmarked == false) {
              boolmarked = true;
              _controller.forward();
            } else {
              boolmarked = false;
              _controller.reverse();
            }
          },
          child: Lottie.network(
            'https://assets4.lottiefiles.com/packages/lf20_pbakha9x.json',
            controller: _controller
          ),
        ),
      ),
    );
  }
}