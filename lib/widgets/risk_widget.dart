import 'package:ale_hospital_task/utils/theme.dart';
import 'package:flutter/material.dart';

class RiskWidget extends StatelessWidget {
  const RiskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 22,
          ),
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
          child: Row(
            children: [
              Image.asset(
                'assets/images/risk.png',
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  "Risk Assessment",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/images/percentage.png',
                width: 48,
                height: 48,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -16,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xff5F57EA),
                  width: 1,
                ),
                boxShadow: [
                  AppTheme.boxShadow,
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Calculate",
                      style: TextStyle(
                        color: AppTheme.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward,
                      color: AppTheme.primaryColor,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
