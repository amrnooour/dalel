import 'package:dalel/features/home/presentation/widgets/custom_home_item_list_view.dart';
import 'package:flutter/material.dart';

class CustomHomeListView extends StatelessWidget {
  const CustomHomeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(width: 16,),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomHomeItemListView(),),
    );
  }
}
