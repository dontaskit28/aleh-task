import 'package:ale_hospital_task/utils/theme.dart';
import 'package:ale_hospital_task/widgets/appbar.dart';
import 'package:flutter/material.dart';

class SoSRequestPage extends StatefulWidget {
  const SoSRequestPage({super.key});

  @override
  State<SoSRequestPage> createState() => _SoSRequestPageState();
}

class _SoSRequestPageState extends State<SoSRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF14336),
                    boxShadow: [
                      AppTheme.boxShadow,
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 11,
                  ),
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                        text: "Your ",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: "SOS",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          TextSpan(
                            text: " request has been raised",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      AppTheme.boxShadow,
                    ],
                    border: Border.all(
                      color: const Color(0xff664DEF),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 23,
                    vertical: 23,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Ambulance Arriving in ",
                            style: TextStyle(
                              color: Color(0xff282828),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            "6 Minutes",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff664DEF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            width: 30,
                            height: 30,
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              'assets/images/map.png',
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Heading towards to the patient",
                        style: TextStyle(
                          color: Color(0xff282828),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff664DEF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              height: 2,
                            ),
                          ),
                          Image.asset(
                            'assets/images/ambulance.png',
                            height: 40,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff282828),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 2,
                            width: 55,
                          ),
                          Image.asset(
                            'assets/images/person.png',
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Doctor is here to help you",
                  style: TextStyle(
                    color: Color(0xff282828),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: Image.asset(
                    'assets/images/doctor2.png',
                    width: double.maxFinite,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/share.png',
                          width: 50,
                          height: 44,
                        ),
                        const SizedBox(width: 7),
                        const Text(
                          "Share Report",
                          style: TextStyle(
                            color: Color(0xffADADAD),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 2,
                      color: const Color(0xffE4E4E4),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/queries.png',
                          width: 50,
                          height: 44,
                        ),
                        const SizedBox(width: 7),
                        const Text(
                          "Any Queries",
                          style: TextStyle(
                            color: Color(0xffADADAD),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
