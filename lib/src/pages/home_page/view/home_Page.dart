import 'package:flutter/material.dart';
import 'package:stefanini_app/src/models/app_model.dart';
import 'package:stefanini_app/src/pages/home_page/widgets/create_logo.dart';
import 'package:stefanini_app/src/pages/home_page/widgets/dropdown_category.dart';
import 'package:stefanini_app/src/pages/home_page/widgets/list_app.dart';
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
  String searchWord = '';
  String? category;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            CreateLogo(
                size: size,
                searchFilter: searchFilter,
                isSearch: isSearch,
                onPress: clearData,
                searchController: searchController),
            DropDownCategory(
                size: size, categoryFilter: dropDownFilter, category: category),
            ListApp(
              size: size,
              searchWord: searchWord,
              category: category,
            )
          ],
        ),
      ),
    );
  }

  clearData() {
    searchWord = '';
    searchController.clear();
    category = null;
    FocusScope.of(context).requestFocus(new FocusNode());
    setState(() {});
  }

  void dropDownFilter(String? value) {
    if (value != null && value != category) {
      category = value;
      searchController.clear();
      searchWord = '';
      isSearch = true;
      setState(() {});
    }
  }

  void searchFilter(String value) {
    debounce.run(() {
      if (value.isNotEmpty) {
        isSearch = true;
        searchWord = value;
      } else {
        clearData();
        isSearch = false;
      }
      setState(() {});
    });
  }
}
