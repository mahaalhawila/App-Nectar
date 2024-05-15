import 'package:go_router/go_router.dart';
import 'package:nectar/features/beverages/presentation/views/beverages_view.dart';
import 'package:nectar/features/explore/presentation/views/explore_view.dart';
import 'package:nectar/features/explore/presentation/views/widgets/explore_view_body.dart';
import 'package:nectar/features/my_cart/presentation/views/my_cart_view.dart';
import 'package:nectar/features/order_accepted/presentation/views/order_accepted_view.dart';
import '../../features/explore/presentation/views/widgets/bottom_nav_bar.dart';
import '../../features/onbording/presentation/views/onbording_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter{

  static const kOnbordingView = '/onbordingView';
  static const kExploreView = '/exploreView';
  static const kBeveragesView = '/beveragesView';
  static const kMyCartView = '/myCartView';
  static const kExploreViewBody = '/exploreViewBody';
  static const kBottonNavBar = '/bottonNavBar';
  static const kOrderAccepted = '/orderAccepted';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnbordingView,
        builder: (context, state) => const OnbordingView(),
      ),
      GoRoute(
        path: kExploreView,
        builder: (context, state) => const ExploreView(),
      ),

      GoRoute(
        path: kBeveragesView,
        builder: (context, state) => const BeveragesView(),
      ),
      GoRoute(
        path: kMyCartView,
        builder: (context, state) => const MyCartView(),
      ),
      GoRoute(
        path: kExploreViewBody,
        builder: (context, state) => const ExploreViewBody(),
      ),
      GoRoute(
        path:kBottonNavBar,
        builder: (context, state) => const BottonNavBar(),
      ),
      GoRoute(
        path:kOrderAccepted,
        builder: (context, state) => const OrderAcceptedView(),
      ),
    ],
  );
}