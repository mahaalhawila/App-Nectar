import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/features/explore/presentation/views/widgets/explore_view_body.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: ExploreViewBody(),
      ),
    );
  }
}
