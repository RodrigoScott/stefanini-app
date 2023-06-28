import 'package:flutter/material.dart';
import 'package:stefanini_app/src/constants/assets.dart';
import 'package:stefanini_app/src/constants/colors.dart';
import 'package:stefanini_app/src/models/app_model.dart';
import 'package:stefanini_app/src/widgets/rating_bar.dart';

class AppCard extends StatelessWidget {
  const AppCard({super.key, required this.size, required this.appObject});

  final Size size;
  final AppModel appObject;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: size.width * .4,
      height: size.height * .32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: AppColors.primary)),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
            height: size.width * .35,
            width: size.width * .35,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  Assets.avatar + appObject.avatar,
                  fit: BoxFit.cover,
                ))),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: SizedBox(
            width: size.width * .35,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    appObject.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    appObject.developer,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RateBar(rate: 2),
                  Text(
                    '\$${appObject.cost}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  )
                ]),
          ),
        ),
      ]),
    );
  }
}
