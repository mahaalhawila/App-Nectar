import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../manger/app_cubit/cubit.dart';
import '../../manger/app_cubit/states.dart';
class BottonNavBar extends StatelessWidget {
  const BottonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AppCubit(),
    child: BlocConsumer<AppCubit, AppStates>(
    listener: (context, state) {},
    builder: (context, state) {
    AppCubit cubit = AppCubit.get(context);
    return Scaffold(
      body: cubit.screens[cubit.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        selectedIconTheme: const IconThemeData(
          size: 65
        ),
        currentIndex: cubit.currentIndex,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(AssetsData.store, color: cubit.currentIndex == 0
              ?kPrimaryColor
              : kColorBlack,
          ),
            label: 'Home',),
          BottomNavigationBarItem(icon:SvgPicture.asset(AssetsData.group3, color: cubit.currentIndex == 1
              ?kPrimaryColor
              : kColorBlack,) ,
            label: 'Explor',),
          const BottomNavigationBarItem(icon:Icon(Icons.shopping_cart_outlined,size:25,),
            label: 'Cart',),
          BottomNavigationBarItem(icon: SvgPicture.asset(AssetsData.heart, color: cubit.currentIndex == 3
              ?kPrimaryColor
              : kColorBlack,),
            label: 'Favourite',),
          const BottomNavigationBarItem(icon:Icon(Icons.person_2_outlined,size:25,),
            label: 'Profile',),


        ],
        onTap: (Index){
          cubit.ChangeBottomNavBar(Index);
        },
      )
    );
    },
    ),
    );
  }
  }

