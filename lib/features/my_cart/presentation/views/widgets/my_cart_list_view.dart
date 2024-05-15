import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/features/my_cart/presentation/views/widgets/my_cart_list_view_item.dart';

class MyCartListView extends StatelessWidget {
  const MyCartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount:20,
        itemBuilder: (context,index) {
          return const MyCartListViewItem();
          }, separatorBuilder: (BuildContext context, int index)=>const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Divider(),
          ),
        );
  }
}
