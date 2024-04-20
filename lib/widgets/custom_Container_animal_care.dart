import 'package:flutter/material.dart';
class CustomContainerAnimalCare extends StatelessWidget {
  const  CustomContainerAnimalCare({
    super.key,
    required this.titleClinic,
    required this.cost,
    required this.doctor,
    required this.degree,
  });
final String titleClinic;
final String cost;
final String doctor;
final String degree;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xff4E584B),
          borderRadius: BorderRadius.circular(20)),
      child:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleClinic,
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
           const  SizedBox(
              height: 20,
            ),
            Text(
              cost,
              style:const  TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              doctor,
              style:const  TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              degree,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
