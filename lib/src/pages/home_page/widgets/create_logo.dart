import 'package:flutter/material.dart';
import 'package:stefanini_app/src/constants/assets.dart';
import 'package:stefanini_app/src/constants/colors.dart';
import 'package:stefanini_app/src/pages/home_page/widgets/search_bar.dart';
import 'package:stefanini_app/src/widgets/block_button_widget.dart';

class CreateLogo extends StatelessWidget {
  const CreateLogo({
    super.key,
    required this.size,
    required this.searchFilter,
    required this.isSearch,
    this.onPress,
    required this.searchController,
  });

  final Size size;
  final ValueChanged<String> searchFilter;
  final bool isSearch;
  final VoidCallback? onPress;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(bottom: 20),
      color: Colors.black,
      width: size.width,
      height: size.height * .2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(Assets.logo),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                      width: size.width * .7,
                      height: size.height * 0.05,
                      child: SearchBar(
                          searchInput: searchFilter,
                          searchController: searchController)),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: size.height * .05,
                      height: size.height * 0.05,
                      child: BlockButtonWidget(
                        color: AppColors.primary,
                        onPressed: isSearch ? onPress! : () {},
                        icon: isSearch ? Icons.clear : Icons.search,
                      )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
