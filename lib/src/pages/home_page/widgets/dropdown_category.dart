import 'package:flutter/material.dart';
import 'package:stefanini_app/src/constants/copys.dart';

class DropDownCategory extends StatelessWidget {
  const DropDownCategory(
      {super.key, required this.size, this.category, required this.categoryFilter});

  final Size size;
  final String? category;
  final ValueChanged<String?> categoryFilter;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              hint: Text(Copys.homepage.category),
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
                categoryFilter(cat);
              }),
        ),
      ),
    );
  }
}
