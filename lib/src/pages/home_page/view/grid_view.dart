import 'package:flutter/material.dart';
import 'package:stefanini_app/src/models/app_model.dart';
import 'package:stefanini_app/src/pages/home_page/widgets/app_card.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key, required this.size, required this.appObject});

  final Size size;
  final List<AppModel> appObject;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: .65,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: appObject.length,
          itemBuilder: (BuildContext ctx, index) {
            return AppCard(size: size, appObject: appObject[index]);
          }),
    );
  }
}
