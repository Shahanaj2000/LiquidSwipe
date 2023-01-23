import 'dart:html';

import 'package:flutter/material.dart';

import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LiquidSwipee extends StatelessWidget {
   LiquidSwipee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: page,
        slideIconWidget: const Icon(Icons.arrow_back_ios, size: 30,),
        positionSlideIcon: 0.8,
        waveType: WaveType.liquidReveal,
        enableLoop: false,
        enableSideReveal: true,
        fullTransitionValue: 300,
        
      ),
    );
  }
  final page = [
    Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_svu68ms9.json', height: 300, width: 300),
          ),
          //!
          const Padding(
            padding:  EdgeInsets.only(top: 10, bottom: 20),
            child: Text(
              "A fit body, a calm mind, a house full of love!",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    ),

    Container(
      width: double.infinity,
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_ikvz7qhc.json', height: 300, width: 300),
          ),
          //!
          const Padding(
            padding:  EdgeInsets.only(top: 10, bottom: 20),
            child: Text(
              "A fit body, a calm mind, a house full of love!",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    ),

    Container(
      width: double.infinity,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_hzfmxrr7.json', height: 300, width: 300),
          ),
          //!
          const Padding(
            padding:  EdgeInsets.only(top: 10, bottom: 20),
            child: Text(
              "A fit body, a calm mind, a house full of love!",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    ),

    
  ];

  //Dot indicator
  
}