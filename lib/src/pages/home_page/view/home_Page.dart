import 'package:flutter/material.dart';
import 'package:stefanini_app/services/home_page_service.dart';
import 'package:stefanini_app/src/constants/copys.dart';
import 'package:stefanini_app/src/models/app_model.dart';
import 'package:stefanini_app/src/pages/home_page/widgets/create_logo.dart';
import 'package:stefanini_app/src/pages/home_page/widgets/grid_view.dart';
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
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                width: size.width,
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  child: DropdownButton<String>(
                      isExpanded: true,
                      value: category,
                      borderRadius: BorderRadius.circular(10),
                      underline: SizedBox(),
                      hint: Text('Categoria'),
                      items: [
                        DropdownMenuItem(
                          value: 'Finanzas',
                          child: Text('Finanzas'),
                        ),
                        DropdownMenuItem(
                          value: 'Aplicación',
                          child: Text('Aplicación'),
                        ),
                        DropdownMenuItem(
                          value: 'Entretenimiento',
                          child: Text('Entretenimiento'),
                        ),
                        DropdownMenuItem(
                          value: 'Tecnología',
                          child: Text('Tecnología'),
                        )
                      ],
                      onChanged: (cat) {
                        if (cat != null) {
                          category = cat;
                          isSearch = true;
                          setState(() {});
                        } else {
                          clearData();
                        }
                      }),
                ),
              ),
            ),
            FutureBuilder<List<AppModel>?>(
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
                }),
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
