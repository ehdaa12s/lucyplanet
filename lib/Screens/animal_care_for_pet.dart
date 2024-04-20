import 'package:flutter/material.dart';
import 'package:lucyplanet/widgets/custom_Container_animal_care.dart';

class AnimalCarePetScreen extends StatefulWidget {
  const AnimalCarePetScreen({super.key});

  @override
  State<AnimalCarePetScreen> createState() => _AnimalCarePetScreenState();
}

class _AnimalCarePetScreenState extends State<AnimalCarePetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F7EF),
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: const Column(
            children: [
              CustomContainerAnimalCare(
                  titleClinic: 'Veterinary Clinic',
                  cost: '20',
                  doctor: 'Dr. John',
                  degree: 'phD.'),
              SizedBox(
                height: 20,
              ),
              CustomContainerAnimalCare(
                  titleClinic: 'Veterinary Clinic',
                  cost: '30',
                  doctor: 'Dr mai ',
                  degree: 'phD.'),
              SizedBox(
                height: 20,
              ),
              CustomContainerAnimalCare(
                  titleClinic: 'Veterinary Clinic',
                  cost: '40',
                  doctor: 'Dr. John',
                  degree: 'phD.'),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
