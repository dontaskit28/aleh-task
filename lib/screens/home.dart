import 'package:ale_hospital_task/widgets/appbar.dart';
import 'package:ale_hospital_task/widgets/appointment_widget.dart';
import 'package:ale_hospital_task/widgets/risk_widget.dart';
import 'package:ale_hospital_task/widgets/sos_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final int _totalSteps = 3;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _selectedIndex = (_scrollController.offset /
              _scrollController.position.maxScrollExtent *
              _totalSteps)
          .floor();
      if (_selectedIndex >= _totalSteps) {
        _selectedIndex = _totalSteps - 1;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: Column(
            children: [
              const CustomAppBar(),
              const SizedBox(height: 20),
              const SoSWidget(),
              const SizedBox(height: 57),
              const RiskWidget(),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Scheduled Appointment",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff303030),
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff5F57EA),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: [
                    for (int i = 0; i < 3; i++) ...[
                      const AppointmentWidget(),
                      const SizedBox(width: 20),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // three dots
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < _totalSteps; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: i == _selectedIndex ? 15 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: i == _selectedIndex
                            ? const Color(0xff5F57EA)
                            : const Color(0xffF0EDFD),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How It Helps",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff303030),
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff5F57EA),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff6252EC).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(18),
                ),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 20,
                ),
                child: Image.asset(
                  'assets/images/sos_button.png',
                  width: 290,
                  height: 203,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
