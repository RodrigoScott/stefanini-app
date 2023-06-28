import 'package:flutter/material.dart';

class BlockButtonWidget extends StatelessWidget {
  const BlockButtonWidget({
    Key? key,
    required this.color,
    this.text,
    required this.onPressed,
    this.icon,
  }) : super(key: key);

  final Color color;
  final String? text;
  final VoidCallback onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return icon != null ? Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: color),
      child: IconButton(
        color: Colors.black,
        icon:  Icon(icon),
        onPressed: onPressed,
      ),
    ) : ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
            horizontal: 24.0, vertical: 12.0)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
