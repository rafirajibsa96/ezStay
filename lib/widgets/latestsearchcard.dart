import 'package:ezstay/theme.dart';
import 'package:flutter/material.dart';

class LatestSearchCard extends StatelessWidget {
  final String hotelName;
  const LatestSearchCard(
    this.hotelName, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 12,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 22,
      ),
      height: 33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          100,
        ),
        border: Border.all(
          color: eGreyBorderColor,
          width: 2,
        ),
        color: eWhiteColor,
      ),
      child: Text(
        hotelName,
      ),
    );
  }
}
