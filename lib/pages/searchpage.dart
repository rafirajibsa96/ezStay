import 'package:ezstay/theme.dart';
import 'package:ezstay/widgets/bottomnavbaritem.dart';
import 'package:ezstay/widgets/latestsearchcard.dart';
import 'package:ezstay/widgets/nearbyhotelcard.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: eGreyBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(
                    defaultMargin,
                  ),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Location',
                            style: greyTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: regular,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Bandung,',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                              Text(
                                ' Indonesia',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: regular,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        cursorColor: ePrimaryColor,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: eWhiteColor,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                              top: 13,
                              bottom: 13,
                              left: 16,
                              right: 16,
                            ),
                            child: Image.asset(
                              'assets/icon_search.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                          hintText: 'Find your Favorite Hotels',
                          hintStyle: greyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              100,
                            ),
                            borderSide: BorderSide(
                              color: eGreyBorderColor,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              100,
                            ),
                            borderSide: BorderSide(
                              color: eGreyBackgroundColor,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.all(
                    defaultMargin,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Latest Search',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          LatestSearchCard(
                            'Mason',
                          ),
                          LatestSearchCard(
                            'Swissbell',
                          ),
                          LatestSearchCard(
                            'Yello',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          LatestSearchCard(
                            'GHSetiabudi',
                          ),
                          LatestSearchCard(
                            'Damoty Hotel',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.all(
                    defaultMargin,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Nearby You',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                NearbyHotelCard(
                  'assets/nearbyhotel1.png',
                  'GH Setiabudi',
                  'Setiabudi',
                  'Bandung',
                  0.1,
                ),
                NearbyHotelCard(
                  'assets/nearbyhotel2.png',
                  'Damsauru Hotel',
                  'Pasteur',
                  'Bandung',
                  1.6,
                ),
                NearbyHotelCard(
                  'assets/nearbyhotel3.png',
                  'Andjoy Hotel',
                  'Kebon Jati',
                  'Bandung',
                  2.2,
                ),
                SizedBox(
                  height: 12,
                ),
                Center(
                  child: Text(
                    'Load More',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                ),
                SizedBox(
                  height: 110,
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
