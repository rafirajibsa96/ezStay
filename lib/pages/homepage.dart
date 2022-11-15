import 'package:ezstay/theme.dart';
import 'package:ezstay/widgets/bottomnavbaritem.dart';
import 'package:ezstay/widgets/hotelcard.dart';
import 'package:ezstay/widgets/recommendedhotel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: eGreyBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 26,
                    left: 23,
                    bottom: 73,
                    right: 25,
                  ),
                  height: 125,
                  width: MediaQuery.of(context).size.width,
                  color: eBlueBackgroundColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 5,
                        ),
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            6,
                          ),
                          color: Colors.white.withOpacity(
                            0.26,
                          ),
                        ),
                        child: Image.asset(
                          'assets/bar.png',
                        ),
                      ),
                      Text(
                        'Discover',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 5,
                        ),
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            6,
                          ),
                          color: Colors.white.withOpacity(
                            0.26,
                          ),
                        ),
                        child: Image.asset(
                          'assets/notification.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: defaultMargin,
                  ),
                  margin: EdgeInsets.only(
                    top: 78,
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: eWhiteColor,
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Balance',
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                          Text(
                            'IDR 9.200.301',
                            style: primaryTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 5,
                        ),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            4,
                          ),
                          color: const Color(0xffE4EDFF),
                        ),
                        child: Image.asset(
                          'assets/plus.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 182,
                    right: defaultMargin,
                    left: defaultMargin,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommended Hotels',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'View all',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: defaultMargin,
                    ),
                    child: Row(
                      children: [
                        RecommendedHotelCard(
                          'Safari',
                          'Bimosaurus Hotel',
                          599.999,
                          'Buitenzorg',
                          'assets/recommended1.png',
                          4.9,
                        ),
                        RecommendedHotelCard(
                          'Bali',
                          'Daino Sas Hotel',
                          599.999,
                          'Denpasar',
                          'assets/recommended2.png',
                          4.9,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 595,
                    right: defaultMargin,
                    left: defaultMargin,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New Hotels Experience',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'View all',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 634,
                  ),
                  child: Column(
                    children: [
                      HotelCard(
                        'assets/newhotel1.png',
                        'Skytown Hotel',
                        'Sibolga',
                        'Medan',
                        4.9,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: 24,
          right: 26,
        ),
        height: 72,
        width: MediaQuery.of(context).size.width,
        color: eWhiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavbarItem(
              'assets/icon_home.png',
              'Home',
            ),
            BottomNavbarItem(
              'assets/icon_search.png',
              'Search',
            ),
            BottomNavbarItem(
              'assets/icon_order.png',
              'Order',
            ),
            BottomNavbarItem(
              'assets/icon_profile.png',
              'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
