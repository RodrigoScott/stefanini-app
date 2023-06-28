import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateBar extends StatelessWidget {
  const RateBar({super.key, required this.rate});

  final int rate;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rate.toDouble(),
      itemBuilder: (context, index) => Icon(
        Icons.star,
        color: rate.toDouble() < 3.0 ? Colors.red : Colors.green,
      ),
      itemCount: 5,
      itemSize: 17.0,
      direction: Axis.horizontal,
    );
  }
}
