import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class PhysicalInfoCard extends StatelessWidget {
  final String info;
  final String unit;
  final String title;

  const PhysicalInfoCard({
    required this.info,
    required this.title,
    required this.unit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: info,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: .bold,
                    color: Colors.redAccent.shade700
                  ),
                ),
                if (unit.isNotEmpty)
                  TextSpan(
                    text: " $unit",
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: Colors.grey.shade600,
                    ),
                  ),
              ],
            ),
          ),

          SizedBox(height: 5.h),

          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 11.sp,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}