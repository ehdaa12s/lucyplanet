import 'package:flutter/material.dart';
import 'package:lucyplanet/Screens/animal_care_for_pet.dart';
import 'package:lucyplanet/Screens/volunteer_Screen.dart';

import '../widgets/category_list_widgets.dart';
import '../widgets/custom_tap_icon.dart';

class AnimalCareScreen extends StatefulWidget {
  const AnimalCareScreen({super.key});

  @override
  State<AnimalCareScreen> createState() => _AnimalCareScreenState();
}

class _AnimalCareScreenState extends State<AnimalCareScreen>  with SingleTickerProviderStateMixin{
  int _selectedIndex = 0;
late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
@override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9E5D7),
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Color(0xff4E584B),
                    ),
                  ),
                  const Text(
                    'Animal Care',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4E584B)),
                  ),
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
                    childOfCustomTapIcon: const Icon(Icons.list),
                    activeColor: const Color(0xff99B89B),
                    inactiveColor: const Color(0xffD9E5D7),
                  ),
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
                      'Adaption',
                      style: TextStyle(color: Color(0xff273526)),
                    )),
                    activeColor: const Color(0xff99B89B),
                    inactiveColor: const Color(0xffD9E5D7),
                  ),
                  CustomTapWidget(
                    selectedIndex: _selectedIndex,
                    childOfCustomTapIcon: const Center(
                        child: Text(
                      ' your Pet ',
                      style: TextStyle(color: Color(0xff273526)),
                    )),
                    activeColor: const Color(0xff99B89B),
                    inactiveColor: const Color(0xffD9E5D7),
                  ),
                  CustomTapWidget(
                    selectedIndex: _selectedIndex,
                    childOfCustomTapIcon: const Center(
                        child: Text(
                      ' volunteer ',
                      style: TextStyle(color: Color(0xff273526)),
                    )),
                    activeColor: const Color(0xff99B89B),
                    inactiveColor: const Color(0xffD9E5D7),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 500,
                child: TabBarView(
                  controller: _tabController,

                  children: [
                    Container(
                      color: const Color(0xffD9E5D7),
                      child: const Center(child: Text('Tab 1 Content')),
                    ),
                    const CategoryListWidget(),
                    Container(
                      color: const Color(0xffD9E5D7),
                      child: const Center(child: Text('Tab 3 Content')),
                    ),
                    Container(
                      color: const Color(0xffD9E5D7),
                      child: const Center(child: AnimalCarePetScreen()),
                    ),
                    Container(
                      color: const Color(0xffD9E5D7),
                      child: const Center(child: VolunteerScreen()),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
