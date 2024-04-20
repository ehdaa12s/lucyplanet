
import 'package:flutter/material.dart';

class Challangescreen extends StatelessWidget {
  const Challangescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
      children: [
        const SizedBox(
          height: 20,
        ),

        const Text(
          'This app is for those who love animals, the'
              ' environment, community impact, and '
              'sustainable living.',
          style: TextStyle(fontSize: 20, color: Color(0xff4E584B)),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xff4E584B),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Life Style',
                      style:
                      TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Lucy is curious about how ',
                      style:
                      TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      'sustainability fits into your life.',
                      style:
                      TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      ' Lucy does not judge; it advises.',
                      style:
                      TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),

                Image.asset('assets/images/Completed checklist form on a clipboard and pencil.png',
                    height: 100, width: 80)
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xffADBBA8),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Suggestion ',
                      style:
                      TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Based on your responses,  ',
                      style:
                      TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      'Lucy will advise you to change',
                      style:
                      TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      ' unsustainable behaviors to ensure survival.',
                      style:
                      TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),

                Image.asset('assets/images/man riding bicycle.png',
                    height: 100, width: 60)
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xffC3D2BD),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Task proof',
                      style:
                      TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'After finishing all tasks, you ',
                      style:
                      TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      'will be required to submit ',
                      style:
                      TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      ' proof to access you rewards ',
                      style:
                      TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),

                Image.asset('assets/images/winner cup.png',
                    height: 100, width: 80)
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),],
    );
  }
}
