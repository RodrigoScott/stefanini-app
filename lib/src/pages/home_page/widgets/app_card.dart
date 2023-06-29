import 'package:flutter/material.dart';
import 'package:stefanini_app/src/constants/assets.dart';
import 'package:stefanini_app/src/constants/colors.dart';
import 'package:stefanini_app/src/constants/copys.dart';
import 'package:stefanini_app/src/models/app_model.dart';
import 'package:stefanini_app/src/pages/home_page/widgets/detail_card.dart';
import 'package:stefanini_app/src/widgets/rating_bar.dart';

class AppCard extends StatelessWidget {
  const AppCard({super.key, required this.size, required this.appObject});

  final Size size;
  final AppModel appObject;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => appModal(context),
      child: Container(
        padding: EdgeInsets.all(10),
        width: size.width * .4,
        height: size.height * .32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: AppColors.primary)),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          buildAvatar(),
          SizedBox(
            height: 10,
          ),
          cardBody(size: size, appObject: appObject),
        ]),
      ),
    );
  }

  Container buildAvatar() {
    return Container(
        height: size.width * .35,
        width: size.width * .35,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Hero(
              tag: appObject.avatar,
              child: Image.asset(
                Assets.avatar + appObject.avatar,
                fit: BoxFit.cover,
              ),
            )));
  }

  void appModal(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => DetailCard(
              appObject: appObject,
            ));
  }

  cardBody({required Size size, required AppModel appObject}) {
    return Expanded(
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
              RateBar(rate: appObject.rank),
              Text(
                appObject.cost < 0.5
                    ? Copys.homepage.free
                    : '\$${appObject.cost}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              )
            ]),
      ),
    );
  }
}
