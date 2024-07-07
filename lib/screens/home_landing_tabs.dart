
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'home_screen.dart';

class HomeScreenTabs extends StatefulWidget {
  const HomeScreenTabs({super.key});

  @override
  State<HomeScreenTabs> createState() => _HomeScreenTabsState();
}

class _HomeScreenTabsState extends State<HomeScreenTabs> {
  int indexMenuItem = 0;
  final menu = [
    {
      'icon': 'assets/ic_home_border.png',
      'icon_active': 'assets/ic_home_filled.png',
      'tab': const HomeScreen(),
    },
    {
      'icon': 'assets/ic_heart_border.png',
      'icon_active': 'assets/ic_heart_border.png',
      'tab': const Center(child: Text('Favorite')),
    },
    {
      'icon': 'assets/ic_bag_border.png',
      'icon_active': 'assets/ic_bag_border.png',
      'tab': const Center(child: Text('Bag')),
    },
    {
      'icon': 'assets/ic_notification_border.png',
      'icon_active': 'assets/ic_notification_border.png',
      'tab': const Center(child: Text('Notification')),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: menu[indexMenuItem]['tab'] as Widget,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: List.generate(menu.length, (index) {
            Map item = menu[index];
            bool isSelected = indexMenuItem == index;
            return Expanded(
              child: InkWell(
                onTap: () {
                  indexMenuItem = index;
                  setState(() {});
                },
                child: SizedBox(
                  height: 70,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Gap(20),
                      ImageIcon(
                        AssetImage(
                          item[isSelected ? 'icon_active' : 'icon'],
                        ),
                        size: 24,
                        color: Color(isSelected ? 0xffC67C4E : 0xffA2A2A2),
                      ),
                      if (isSelected) const Gap(6),
                      if (isSelected)
                        Container(
                          height: 5,
                          width: 10,
                          decoration: BoxDecoration(
                            color: const Color(0xffC67C4E),
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
