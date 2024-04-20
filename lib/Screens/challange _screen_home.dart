import 'package:flutter/material.dart';
import 'package:lucyplanet/Screens/challanage_screen.dart';
import 'package:lucyplanet/Screens/challanage_screen_rewards.dart';

import '../widgets/custom_tap_icon.dart';
import '../widgets/category_list_widgets.dart';

class CallanageScreenHome extends StatefulWidget {
  const CallanageScreenHome({super.key});

  @override
  State<CallanageScreenHome> createState() => _CallanageScreenHomeState();
}

class _CallanageScreenHomeState extends State<CallanageScreenHome>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F7EF),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Color(0xff4E584B),
                    ),
                    Text(
                      'Challanges',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4E584B)),
                    ),
                    Icon(Icons.search, size: 30, color: Color(0xff4E584B))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TabBar(
                  controller: _tabController,
                  onTap: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  tabs: [

                    CustomTapWidget(
                      selectedIndex: _selectedIndex,
                      childOfCustomTapIcon: const Center(
                          child: Text(
                        'All',
                        style: TextStyle(color: Color(0xff273526)),
                      )),
                      activeColor: const Color(0xff99B89B),
                      inactiveColor: const Color(0xffD9E5D7),
                    ),
                    CustomTapWidget(
                      selectedIndex: _selectedIndex,
                      childOfCustomTapIcon: const Center(
                          child: Text(
                        'Challanges',
                        style: TextStyle(color: Color(0xff273526)),
                      )),
                      activeColor: const Color(0xff99B89B),
                      inactiveColor: const Color(0xffD9E5D7),
                    ),
                    CustomTapWidget(
                      selectedIndex: _selectedIndex,
                      childOfCustomTapIcon: const Center(
                          child: Text(
                        'Rewards',
                        style: TextStyle(color: Color(0xff273526)),
                      )),
                      activeColor: const Color(0xff99B89B),
                      inactiveColor: const Color(0xffD9E5D7),
                    ),
                  ],
                ),
                Container(
                  height: 500,
                  child: TabBarView(
                    controller: _tabController,
                    children: [

                      const CategoryListWidget(),
                      Container(
                        color: const Color(0xffF1F7EF),
                        child: const Center(
                          child: Challangescreen(),
                        ),
                      ),
                      Container(
                        color: const Color(0xffF1F7EF),
                        child: const Center(child: CallanageScreenRewards()),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
