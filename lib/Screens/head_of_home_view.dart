import 'package:flutter/material.dart';

class HeadOfHomeView extends StatelessWidget {
  const HeadOfHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 169.9,
            width: 390,
            decoration: BoxDecoration(
              color: const Color(0xff557354),
              borderRadius: BorderRadiusDirectional.circular(40),
            ),
          ),
          Positioned(
            top: -25,
            left: 12,
            bottom: 1,
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(40),
                  ),
                  child: Image.asset(
                    'assets/images/remo 1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 19),
                  child: Text(
                    'Lucy Planet',
                    style: TextStyle(fontSize: 25, color: Color(0xff273526)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
