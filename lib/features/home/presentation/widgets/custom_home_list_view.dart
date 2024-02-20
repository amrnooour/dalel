import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/widgets/custom_shimmer_category.dart';
import 'package:dalel/features/home/data/models/historical_characters_model.dart';
import 'package:dalel/features/home/presentation/widgets/custom_home_item_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';

class CustomHomeListView extends StatelessWidget {
  const CustomHomeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance.collection(FireBaseStrings.historicalCharacters).get(),
        builder: (context, snapshot) {
      if (snapshot.hasError) {
        return Text("Something went wrong");
      }
      if (snapshot.hasData && !snapshot.data!.docs[0].exists) {
        return Text("Document does not exist");
      }
      if (snapshot.connectionState == ConnectionState.done) {
        List<HistoricalCharactersModel> historicalCharacters = [];
        for(int i=0;i<snapshot.data!.docs.length;i++){
          historicalCharacters.add(HistoricalCharactersModel.fromJson(snapshot.data!.docs[i]));
        }
        return SizedBox(
          height: 150,
          child: ListView.separated(
            clipBehavior: Clip.none,
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(width: 16,),
            itemCount: snapshot.data!.docs.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>  CustomHomeItemListView(model: historicalCharacters[index]),),
        );
      }
      return CustomShimmerCategory(height: 133, width: 74);
    },);
  }
}

