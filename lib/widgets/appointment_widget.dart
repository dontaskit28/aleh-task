import 'package:ale_hospital_task/utils/theme.dart';
import 'package:flutter/material.dart';

class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color(0xff6252EC).withOpacity(0.1),
          ),
          width: MediaQuery.of(context).size.width * 0.85,
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    'assets/images/doctor.png',
                    width: 102,
                    height: 102,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 22,
                      ),
                      const Text(
                        "Dr. Ashutosh Misra",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffE0DBFC),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "General Consultation",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5F57EA),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "10:30 AM",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff5F57EA),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffF21F61),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(6),
                        topRight: Radius.circular(6),
                        bottomLeft: Radius.circular(18),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    child: const Text(
                      "Pay ₹200",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Text(
                    "Pending",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff5F57EA),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 76,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.0, -1.0),
                end: Alignment(0.0, 1.0),
                colors: [
                  Color(0xff363184),
                  Color(0xff5F57EA),
                ],
                stops: [0.3268, 1.1081],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 9,
              vertical: 12,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Token No",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "5",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                topRight: Radius.circular(18),
              ),
              border: Border.all(
                color: const Color(0xffF0EDFD),
                width: 0.5,
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            child: const Text(
              "Starts in 10 min",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xffF21F61),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -18,
          right: 18,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 9,
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff5F57EA),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  AppTheme.boxShadow,
                ],
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 9,
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.video_call_rounded,
                    color: Color(0xff5F57EA),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Join Call",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5F57EA),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
