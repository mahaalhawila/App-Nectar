

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/features/onbording/presentation/views/widgets/onbording_view_body.dart';

class OnbordingView extends StatelessWidget {
  const OnbordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: OnbordingViewBody(),
      ),
    );
  }
}