import 'package:flutter/material.dart';
import 'package:stefanini_app/services/home_page_service.dart';
import 'package:stefanini_app/src/constants/copys.dart';
import 'package:stefanini_app/src/models/app_model.dart';
import 'package:stefanini_app/src/pages/home_page/view/grid_view.dart';

class ListApp extends StatelessWidget {
  const ListApp(
      {super.key, required this.size, this.category, required this.searchWord});

  final Size size;
  final String searchWord;
  final String? category;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AppModel>?>(
        future: UserService().getAppList(searchWord, category),
        builder: (BuildContext context,
            AsyncSnapshot<List<AppModel>?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return const Text('Error');
            } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
              return GridWidget(
                size: size,
                appObject: snapshot.data != null ? snapshot.data! : [],
              );
            } else {
              return Expanded(
                child: Center(
                    child: Text(
                      Copys.homepage.noApp,
                      style: TextStyle(fontSize: 20),
                    )),
              );
            }
          } else {
            return Text('State: ${snapshot.connectionState}');
          }
        });
  }
}
