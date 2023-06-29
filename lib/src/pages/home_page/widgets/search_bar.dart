import 'package:flutter/material.dart';
import '../../../constants/copys.dart';

class SearchBar extends StatelessWidget {
  const SearchBar(
      {Key? key,
      required this.searchInput,
      required this.searchController,
      required this.size})
      : super(key: key);
  final TextEditingController searchController;
  final ValueChanged<String> searchInput;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .7,
      height: size.height * 0.05,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: TextFormField(
        controller: searchController,
        textCapitalization: TextCapitalization.characters,
        onChanged: (value) {
          searchInput(value);
        },
        decoration: InputDecoration(
          isCollapsed: true,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: Copys.homepage.search,
        ),
      ),
    );
  }
}
