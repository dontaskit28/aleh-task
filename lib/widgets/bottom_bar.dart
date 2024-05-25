import 'package:ale_hospital_task/screens/docs.dart';
import 'package:ale_hospital_task/screens/home.dart';
import 'package:ale_hospital_task/screens/notes.dart';
import 'package:ale_hospital_task/screens/profile.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  List<String> images = [
    'assets/images/home.png',
    'assets/images/notes.png',
    'assets/images/docs.png',
    'assets/images/profile_icon.png',
  ];

  List<Widget> pages = [
    const HomePage(),
    const NotesPage(),
    const DocsPage(),
    const ProfilePage(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  images.length,
                  (index) => bottomIcon(
                    context: context,
                    image: images[index],
                    isSelected: _currentIndex == index,
                    onTap: () {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: pages[_currentIndex],
    );
  }
}

Widget bottomIcon({
  required BuildContext context,
  required String image,
  required bool isSelected,
  required Function() onTap,
}) {
  return InkWell(
    onTap: () {
      onTap();
    },
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            image,
            height: 24,
            width: 24,
            color:
                isSelected ? const Color(0xff00DAA5) : const Color(0xffBDBDBD),
          ),
        ),
        const Spacer(),
        Container(
          height: 4,
          width: 12,
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xff00DAA5) : Colors.transparent,
          ),
        ),
      ],
    ),
  );
}
