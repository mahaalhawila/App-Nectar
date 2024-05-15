import 'package:flutter/cupertino.dart';
import 'beverages_list_view_item.dart';

class BeveragesListView extends StatelessWidget {
  const BeveragesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      shrinkWrap: true,
      gridDelegate:   const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio:0.63,
          crossAxisSpacing:14,
          mainAxisSpacing: 14
      ),
      itemBuilder: (context,index) {
        return const BeveragesListViewItem();
      },

    );
  }
}
