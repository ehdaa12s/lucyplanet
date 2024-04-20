import 'package:flutter/material.dart';
import 'package:lucyplanet/Screens/animal_care_for_pet.dart';

import 'package:lucyplanet/Screens/head_of_home_view.dart';
import 'package:lucyplanet/widgets/custom_tap_icon.dart';
import 'package:lucyplanet/widgets/category_list_widgets.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xffD9E5D7),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const HeadOfHomeView(),
              const SizedBox(height: 15),
              const Divider(
                color: Color(0xff273526),
                indent: 10,
                endIndent: 10,
              ),
              const SizedBox(height: 20),
              TabBar(
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
                      'Awards',
                      style: TextStyle(color: Color(0xff273526)),
                    )),
                    activeColor: const Color(0xff99B89B),
                    inactiveColor: const Color(0xffD9E5D7),
                  ),
                  CustomTapWidget(
                    selectedIndex: _selectedIndex,
                    childOfCustomTapIcon: const Center(
                        child: Text(
                      'Pet care',
                      style: TextStyle(color: Color(0xff273526)),
                    )),
                    activeColor: const Color(0xff99B89B),
                    inactiveColor: const Color(0xffD9E5D7),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [

                    const CategoryListWidget(),
                    Container(
                      color: Colors.green,
                      child: const Center(child: Text('Tab 3 Content')  ),
                    ),
                    Container(
                      color: Colors.green,
                      child: const Center(child: AnimalCarePetScreen(),
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
