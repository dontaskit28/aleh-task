import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 27,
          backgroundColor: const Color(0xff04D4A8),
          child: ClipOval(
            child: Image.asset(
              'assets/images/profile.png',
              width: 42,
              height: 42,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 6),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Kartik',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Let’s see your heart’s streak today',
                style: TextStyle(
                  color: Color(0xff777777),
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/images/notification.png',
          width: 30,
          height: 32,
        ),
        const SizedBox(width: 9),
      ],
    );
  }
}
