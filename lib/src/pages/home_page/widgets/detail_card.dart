import 'package:flutter/material.dart';
import 'package:stefanini_app/src/constants/assets.dart';
import 'package:stefanini_app/src/constants/copys.dart';
import 'package:stefanini_app/src/models/app_model.dart';
import 'package:stefanini_app/src/widgets/block_button_widget.dart';
import 'package:stefanini_app/src/widgets/rating_bar.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key, required this.appObject});

  final AppModel appObject;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SimpleDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: size.width * .7,
            height: size.height * .8,
            child:
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              buildScreenShot(size),
              Divider(height: 20),
              buildAppAvatar(size),
              Divider(
                height: 20,
              ),
              buildRankRow(),
              Divider(
                height: 20,
              ),
              buildUserCommentsList(),
              SizedBox(
                height: 10,
              ),
              buildButtons(context),
            ]),
          ),
        ]);
  }

  Row buildAppAvatar(Size size) {
    return Row(
      children: [
        Container(
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
                ))),
        SizedBox(
          width: 10,
        ),
        buildAppDescription(size)
      ],
    );
  }

  buildButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        BlockButtonWidget(
            color: Colors.black38,
            text: 'Cerrar',
            onPressed: () {
              Navigator.pop(context);
            }),
        SizedBox(
          width: 10,
        ),
        BlockButtonWidget(
            color:
            appObject.installed ? Colors.black38 : Colors.green,
            text: 'Instalar',
            onPressed: appObject.installed ? () {} : () {})
      ],
    );
  }

  buildUserCommentsList() {
    return Expanded(
      child: Scrollbar(
        thickness: 8,
        isAlwaysShown: true,
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true,
            separatorBuilder: (_, index) {
              return Divider();
            },
            itemCount: appObject.users.length,
            itemBuilder: (_, index) {
              return SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        backgroundImage: AssetImage(
                          Assets.generalAssets +
                              appObject.users[index].avatar,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              appObject.users[index].user,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              appObject.users[index].comments,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }

  buildRankRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RateBar(rate: appObject.rank),
        SizedBox(
          width: 10,
        ),
        Text(
          appObject.rank.toDouble().toString(),
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: appObject.rank < 3 ? Colors.red : Colors.green),
        ),
      ],
    );
  }

  buildAppDescription(Size size) {
    return Expanded(
      child: SizedBox(
        width: size.width * .35,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                appObject.name,
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                appObject.developer,
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                appObject.description,
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              //
              Text(
                appObject.cost < 0.5
                    ? Copys.homepage.free
                    : '\$${appObject.cost}',
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.w700),
              )
            ]),
      ),
    );
  }

  buildScreenShot(Size size) {
    return Container(
        height: size.width * .35,
        width: size.width * 7,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              Assets.screenshotPath + appObject.image,
              fit: BoxFit.cover,
            )));
  }
}
