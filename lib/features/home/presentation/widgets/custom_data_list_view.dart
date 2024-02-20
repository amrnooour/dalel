import 'package:flutter/material.dart';
import '../../../../core/models/data_model.dart';
import 'custom_data_list_view_item.dart';

class CustomDataListView extends StatelessWidget {
  List<DataModel> dataList;
  String routePath;
  CustomDataListView({Key? key,required this.dataList,required this.routePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: ListView.separated(
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => const SizedBox(width: 10,),
        itemCount: dataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomDataListViewItem(model: dataList[index],routePath : routePath);
        },
      ),
    );
  }
}
