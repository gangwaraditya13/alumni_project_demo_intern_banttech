import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ProfileListTile extends StatelessWidget {
  String title;
  IconData lIcon;
  VoidCallback onTap;
  ProfileListTile({required this.onTap, required this.title, required this.lIcon, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          minTileHeight: 48.h,
          leading: Icon(lIcon,),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Theme.of(context).colorScheme.secondary,)
        ),
    Divider(color: Colors.grey,  height: 1.h,),
      ],
    );
  }
}
