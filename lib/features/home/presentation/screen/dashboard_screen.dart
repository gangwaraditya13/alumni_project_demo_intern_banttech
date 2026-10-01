import 'package:alumni/features/common/after_login_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    void onTapAdminDashboard(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AfterLoginHome(),));
    }

    return Scaffold(
      body: SafeArea(child: Padding(
        padding: EdgeInsets.all(15.r),
        child: AspectRatio(
          aspectRatio: 16/9,
          child: Wrap(
            spacing: 15.r,
            runSpacing: 15.r,
            children: [
              Padding(
                padding: EdgeInsets.all(15.r),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade500, blurRadius: 12,blurStyle: .outer, spreadRadius: 15)
                    ]
                  ),
                  child: ListTile(
                    onTap: onTapAdminDashboard,
                    title: Text("University Admin Dashboard"),
                    leading: CircleAvatar(
                      foregroundImage: NetworkImage("https://imgs.search.brave.com/hoQCkuggmB04t0i6rhVd2EFOF64SMMgt_iV1ZqZQFuM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vc0J3S0Uv/TUFGYUxuc0J3S0Uv/MS90bC9jYW52YS1j/b250YWN0LXBlcnNv/bi1pY29uLU1BRmFM/bnNCd0tFLnBuZw"),
                      onForegroundImageError: (exception, stackTrace) => Image.asset("lib/assets/icons/danger.png"),
                      foregroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                      backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.r),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade500, blurRadius: 12,blurStyle: .outer, spreadRadius: 15)
                      ]
                  ),
                  child: ListTile(
                    title: Text("Sub-University Admin Dashboard"),
                    leading: CircleAvatar(
                      foregroundImage: NetworkImage("https://imgs.search.brave.com/hoQCkuggmB04t0i6rhVd2EFOF64SMMgt_iV1ZqZQFuM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vc0J3S0Uv/TUFGYUxuc0J3S0Uv/MS90bC9jYW52YS1j/b250YWN0LXBlcnNv/bi1pY29uLU1BRmFM/bnNCd0tFLnBuZw"),
                      onForegroundImageError: (exception, stackTrace) => Image.asset("lib/assets/icons/danger.png"),
                      foregroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                      backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.r),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade500, blurRadius: 12,blurStyle: .outer, spreadRadius: 15)
                      ]
                  ),
                  child: ListTile(
                    title: Text("Montre Dashboard"),
                    leading: CircleAvatar(
                      foregroundImage: NetworkImage("https://imgs.search.brave.com/hoQCkuggmB04t0i6rhVd2EFOF64SMMgt_iV1ZqZQFuM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vc0J3S0Uv/TUFGYUxuc0J3S0Uv/MS90bC9jYW52YS1j/b250YWN0LXBlcnNv/bi1pY29uLU1BRmFM/bnNCd0tFLnBuZw"),
                      onForegroundImageError: (exception, stackTrace) => Image.asset("lib/assets/icons/danger.png"),
                      foregroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                      backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.r),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade500, blurRadius: 12,blurStyle: .outer, spreadRadius: 15)
                      ]
                  ),
                  child: ListTile(
                    title: Text("Athlete Dashboard"),
                    leading: CircleAvatar(
                      foregroundImage: NetworkImage("https://imgs.search.brave.com/hoQCkuggmB04t0i6rhVd2EFOF64SMMgt_iV1ZqZQFuM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vc0J3S0Uv/TUFGYUxuc0J3S0Uv/MS90bC9jYW52YS1j/b250YWN0LXBlcnNv/bi1pY29uLU1BRmFM/bnNCd0tFLnBuZw"),
                      onForegroundImageError: (exception, stackTrace) => Image.asset("lib/assets/icons/danger.png"),
                      foregroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                      backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.r),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade500, blurRadius: 12,blurStyle: .outer, spreadRadius: 15)
                      ]
                  ),
                  child: ListTile(
                    title: Text("Student Dashboard"),
                    leading: CircleAvatar(
                      foregroundImage: NetworkImage("https://imgs.search.brave.com/hoQCkuggmB04t0i6rhVd2EFOF64SMMgt_iV1ZqZQFuM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vc0J3S0Uv/TUFGYUxuc0J3S0Uv/MS90bC9jYW52YS1j/b250YWN0LXBlcnNv/bi1pY29uLU1BRmFM/bnNCd0tFLnBuZw"),
                      onForegroundImageError: (exception, stackTrace) => Image.asset("lib/assets/icons/danger.png"),
                      foregroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                      backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.r),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade500, blurRadius: 12,blurStyle: .outer, spreadRadius: 15)
                      ]
                  ),
                  child: ListTile(
                    title: Text("Alumni Dashboard"),
                    leading: CircleAvatar(
                      foregroundImage: NetworkImage("https://imgs.search.brave.com/hoQCkuggmB04t0i6rhVd2EFOF64SMMgt_iV1ZqZQFuM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vc0J3S0Uv/TUFGYUxuc0J3S0Uv/MS90bC9jYW52YS1j/b250YWN0LXBlcnNv/bi1pY29uLU1BRmFM/bnNCd0tFLnBuZw"),
                      onForegroundImageError: (exception, stackTrace) => Image.asset("lib/assets/icons/danger.png"),
                      foregroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                      backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
