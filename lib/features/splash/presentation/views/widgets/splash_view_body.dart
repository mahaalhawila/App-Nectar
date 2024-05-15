import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/features/splash/presentation/views/widgets/sliding_text.dart';
import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation ;

  @override
  void initState (){
    super.initState();

initSlidingAnimation();
navigateToOnbording();
}



@override
  void dispose(){
  super.dispose();

  animationController.dispose();


}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(AssetsData.logo),
        const SizedBox(
          height:1,
        ),
       SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void navigateToOnbording(){
    Future.delayed(const Duration(seconds: 2),(){
     //  Get.to(()=> HomeView(),transition:Transition.fade,duration: kTransitionDuration);
      GoRouter.of(context).push(AppRouter.kOnbordingView);
    });
  }

  void initSlidingAnimation(){
    animationController = AnimationController(vsync: this,
        duration:const Duration(seconds: 1) );
    slidingAnimation = Tween<Offset>(begin:const Offset(0,2) ,end:const Offset(0.08,-0.6) ).animate(animationController);

    animationController.forward();
  }
}



