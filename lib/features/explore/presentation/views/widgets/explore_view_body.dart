import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/features/explore/presentation/views/widgets/explore_list_view.dart';
import 'custom_app_bar.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(

            child: Column(

              children: [
                CustomAppBar(text:  'Find Products',),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25,),
                  child: ExploreListView(),
                )
              ],
            ),
          )
        ]);
  }
}
