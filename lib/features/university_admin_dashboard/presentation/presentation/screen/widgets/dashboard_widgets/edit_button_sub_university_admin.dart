import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class EditButtonSubUniversityAdmin extends StatelessWidget {

  VoidCallback? onTap;

  EditButtonSubUniversityAdmin({this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30.w,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.4),
        ),
        child: Row(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          spacing: 5.r,
          children: [
            Icon(Icons.edit_note, color: Theme.of(context).colorScheme.secondary,),
            Text("Edit", style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
          ],
        ),
      ),
    );
  }
}
