import 'package:flutter/cupertino.dart';
import 'package:nectar/features/beverages/presentation/views/widgets/custom_app_bar.dart';
import 'beverages_list_view.dart';

class BeveragesViewBody extends StatelessWidget {
  const BeveragesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(

        children: [
          BeveragesCustomAppBar(),
          Expanded(child: BeveragesListView()),

        ],
      ),
    );

  }
}
