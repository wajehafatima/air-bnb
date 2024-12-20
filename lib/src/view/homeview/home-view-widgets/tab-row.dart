import 'package:air_bnb/src/controller/components/tabBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class TabRowWidget extends StatelessWidget {
  const TabRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomTabBar(icon: Icons.bug_report_outlined, text: 'OMG!'),
          CustomTabBar(icon: Icons.stars, text: 'Icons'),
          CustomTabBar(icon: Icons.trending_up_outlined, text: 'Trending'),
          CustomTabBar(icon: Icons.home_work_outlined, text: 'Earth homes'),
          CustomTabBar(icon: Icons.wind_power, text: 'Windmills'),
          CustomTabBar(icon: Icons.vpn_key_outlined, text: 'New'),
          CustomTabBar(icon: Icons.location_city_rounded, text: 'Top cities'),
        ],
      ),
    );
  }
}
