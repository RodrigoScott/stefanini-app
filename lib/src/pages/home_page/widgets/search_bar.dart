import 'package:flutter/material.dart';
import '../../../constants/copys.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key, required this.searchInput}) : super(key: key);

  final ValueChanged<String> searchInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: TextFormField(
        textCapitalization: TextCapitalization.characters,
        onChanged: (value) {
          searchInput(value);
        },
        decoration: InputDecoration(
          isDense: true,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: Copys.homepage.search,
        ),
      ),
    );
  }
}