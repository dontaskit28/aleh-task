import 'package:ale_hospital_task/screens/sos_request.dart';
import 'package:ale_hospital_task/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SoSWidget extends StatefulWidget {
  const SoSWidget({super.key});

  @override
  State<SoSWidget> createState() => _SoSWidgetState();
}

class _SoSWidgetState extends State<SoSWidget> {
  apiCall() async {
    http.post(
      Uri.parse('https://api.heartsaver.in/api/v1/sos'),
      body: {
        "lattitude": "172.26",
        "longitude": "78.46",
        "user_id": "1",
        "status": "1",
      },
    ).then((response) {
      debugPrint(response.body);
      debugPrint(response.statusCode.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 141,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: AppTheme.primaryColor,
              width: 0.5,
            ),
            boxShadow: [
              AppTheme.boxShadow,
            ],
          ),
          child: const Center(
            child: Column(
              children: [
                SizedBox(height: 21),
                Text(
                  "Emergency help needed?",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Just hold the button to call",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -3,
          child: Container(
            height: 24,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
        ),
        Positioned(
          bottom: -55,
          child: InkWell(
            onTap: () {
              // apiCall();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SoSRequestPage(),
                ),
              );
            },
            child: Image.asset(
              'assets/images/sos_button.png',
              height: 110,
              width: 134,
            ),
          ),
        ),
      ],
    );
  }
}
