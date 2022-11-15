import 'package:ezstay/theme.dart';
import 'package:flutter/material.dart';

class RecommendedHotelCard extends StatelessWidget {
  final String name;
  final String city;
  final String province;
  final double price;
  final double rating;
  final String imageUrl;
  const RecommendedHotelCard(
    this.city,
    this.name,
    this.price,
    this.province,
    this.imageUrl,
    this.rating, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 221,
            ),
            padding: EdgeInsets.all(
              12,
            ),
            width: 280,
            height: 291,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  defaultRadius,
                ),
              ),
              color: eWhiteColor,
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 12,
                  ),
                  width: 356,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        imageUrl,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          name,
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/location.png',
                              width: 16,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '$city, $province',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          '$rating',
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/star.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 19,
              left: 12,
              right: 12,
              bottom: 22,
            ),
            width: 280,
            height: 59,
            margin: EdgeInsets.only(
              top: 1,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  defaultRadius,
                ),
              ),
              color: eWhiteColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price Start from:',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'IDR $price',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      '/night',
                      style: greyTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: regular,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
