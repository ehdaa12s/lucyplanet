
import 'package:flutter/material.dart';
class VolunteerScreen extends StatelessWidget{

  const VolunteerScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView(children:
    [
      Column(
      children:  [
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xff4E584B),
              borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding:  EdgeInsets.all(20.0),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'دار رعاية القطط',
                  style:
                  TextStyle(fontSize: 30, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Research institution ',
                  style:
                  TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  'Hours: 20 per week',
                  style:
                  TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  ' Committees: see more',
                  style:
                  TextStyle(fontSize: 15, color: Colors.white),
                ),
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
              color: const Color(0xffADBBA8),
              borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding:  EdgeInsets.all(20.0),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'National Geographic',
                  style:
                  TextStyle(fontSize: 30, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Research institution ',
                  style:
                  TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  'Hours: 20 monthly',
                  style:
                  TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  'Committees: see more',
                  style:
                  TextStyle(fontSize: 15, color: Colors.white),
                ),
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
          child: const Padding(
            padding:  EdgeInsets.all(20.0),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mai clinic',
                  style:
                  TextStyle(fontSize: 30, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Research institution  ',
                  style:
                  TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  'Hours: 20 per week',
                  style:
                  TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  ' Committees: see more',
                  style:
                  TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,

        ),
      ],
    ),
   ],
    );
  }
}
