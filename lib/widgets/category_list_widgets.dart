import 'package:flutter/material.dart';
import 'package:lucyplanet/Screens/animal_care_home.dart';
import 'package:lucyplanet/Screens/challange _screen_home.dart';


import '../Screens/problem_view.dart';
import 'custom_category_card.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          CustomCategroyCard(
            text: 'Problem',
            color: const Color(0xff557354),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ProblemView();
                },
              ));
            },
          ),
          const SizedBox(height: 20),
        CustomCategroyCard(text: 'Challenge', color: const Color(0xff273526)
        ,
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const CallanageScreenHome();
            },
          ));
        },
        ),

          const SizedBox(height: 20),
          CustomCategroyCard(
              text: 'Animal Care', color: const Color(0xff8EB091)
          ,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const AnimalCareScreen();
              },
            ));
          },
          ),

          const SizedBox(height: 20),
          const CustomCategroyCard(text: 'Donate', color: Color(0xff273526)),
          const SizedBox(height: 20),
          const CustomCategroyCard(text: 'Courses', color: Color(0xff8EB091)),
          const SizedBox(height: 20),
          const CustomCategroyCard(
              text: 'Contact Lucy', color: Color(0xff557354)),
          const SizedBox(height: 50),
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff8EB091),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Contact us',
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(18)),
                      height: 50,
                      width: 55,
                      child: Image.asset('assets/images/youtube.png')),
                  Image.asset('assets/images/facebook.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
