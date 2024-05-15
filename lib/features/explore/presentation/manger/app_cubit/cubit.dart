
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/features/explore/presentation/manger/app_cubit/states.dart';
import 'package:nectar/features/explore/presentation/views/explore_view.dart';
import 'package:nectar/features/favourite_view.dart';
import 'package:nectar/features/home_view.dart';
import 'package:nectar/features/my_cart/presentation/views/my_cart_view.dart';
import 'package:nectar/features/profile_view.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AppCubit extends Cubit<AppStates> {
 AppCubit() : super(AppInitialState());
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeView(),const ExploreView(),
    const MyCartView(),
    const FavouriteView(),
    const ProfileView()
  ];

 static AppCubit get(context) => BlocProvider.of(context);
 void ChangeBottomNavBar(int Index)
 {
   currentIndex=Index;
   emit(AppChangeIndex());
 }

}
