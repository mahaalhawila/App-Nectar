import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/features/explore/presentation/views/widgets/explore_list_view_item.dart';
import '../../../../../core/utils/app_router.dart';

class ExploreListView extends StatelessWidget {
  const ExploreListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      shrinkWrap: true,
      gridDelegate:   const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio:0.85,
        crossAxisSpacing:14,
        mainAxisSpacing: 14
      ),
      itemBuilder: (context,index) {
        return GestureDetector(
            onTap: (){
              GoRouter.of(context).push(AppRouter.kBeveragesView);
            },
            child: const ExploreListViewItem());
      },

    );
  }
}
