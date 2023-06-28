import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stefanini_app/src/constants/assets.dart';
import 'package:stefanini_app/src/models/app_model.dart';
import 'package:stefanini_app/src/pages/home_page/widgets/search_bar.dart';
import 'package:stefanini_app/src/widgets/block_button_widget.dart';
import 'package:stefanini_app/src/widgets/debouncer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<AppModel> appsFiltered = [];
  final debounce = Debouncer(milliseconds: 700);
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            createLogo(size),
          ],
        ),
      ),
    );
  }

  createLogo(Size size) {
    return Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 20),
            color: Colors.black,
            width: size.width,
            height: size.height*.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(Assets.logo),
                SizedBox(height: 10,),
                Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                  SizedBox(height: 10,),
                  Row(children: [
                    SizedBox(width:size.width*.7, height:size.height*0.05,child: SearchBar(searchInput: searchFilter)),
                    SizedBox(width: 10,),
                    SizedBox(width:size.height*.05, height:size.height*0.05,child: BlockButtonWidget(color: Color(0xfffec301), text: '', onPressed: () {  }, icon: Icons.search,)),
                  ],)
                ],)
              ],
            ),
          );
  }

  void searchFilter(String value) {
    debounce.run(() {
      if (value.isNotEmpty) {
        isSearch = true;
        //appsFiltered =
            //routes.where((i) => i.nearbyExternalId!.contains(value)).toList();
      } else {
        appsFiltered = [];
        isSearch = false;
      }
      setState(() {});
    });
  }
}
