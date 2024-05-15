import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/core/utils/styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
      animation:slidingAnimation,
      builder: (context,_){
        return SlideTransition(
          position: slidingAnimation,
          child:  Text('o  n  l  i  n  e   g r o c e r i e t',
            style:Styles.textStyle14.copyWith(
              color: kColorWhite
            ),
            textAlign: TextAlign.center,
          ),
        );
      },

    );
  }
}