import 'package:flutter/material.dart';

class ProblemView extends StatelessWidget {
  const ProblemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9E5D7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const BackButton(),
        title: const Text('Problem'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 250,
                    width: 250,
                    child: Image.asset('assets/images/Group 14.png'),
                  ),
                  Image.asset('assets/images/Come back later.png'),
                ],
              ),
              const Text(
                'Every thign Starts with',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 450,
                    child: Image.asset(
                      'assets/images/Map.jpg',
                      height: 450,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
