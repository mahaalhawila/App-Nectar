import 'package:flutter/cupertino.dart';
import 'package:nectar/features/onbording/presentation/views/widgets/custom_content_onbording.dart';
class OnbordingViewBody extends StatelessWidget {
  const OnbordingViewBody({super.key});
  @override
  Widget build(BuildContext context) {
     return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:CustomContentOnbording()
    )
    ]);
  }
}
