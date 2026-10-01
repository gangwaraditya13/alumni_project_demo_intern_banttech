import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class HomeScreenPart3Card extends StatelessWidget {
  const HomeScreenPart3Card({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:
      MediaQuery.of(context).size.width /
          1.2,
      child: Stack(
        children: [
          Container(
            height: 350.h,
            width: MediaQuery.of(
              context,
            ).size.width,
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(12),
            ),
            clipBehavior: .antiAlias,
            child: Image.network(
              fit: .cover,
              "https://plus.unsplash.com/premium_photo-1685366445883-709973744248?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: EdgeInsets.all(
                8.r,
              ),
              child: Container(
                height: 110.h,
                width: MediaQuery.of(
                  context,
                ).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).colorScheme.surface,
                  borderRadius:
                  BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(
                    15.r,
                  ),
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        "National Indoor Court Male",
                        style: TextStyle(
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Basketball Game",
                        style: TextStyle(
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              "lib/assets/icons/img_1.png",
                              height: 20.h,
                              width: 20.w,
                              color:
                              Theme.of(
                                context,
                              )
                                  .colorScheme
                                  .secondary,
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(
                                left: 8.r,
                              ),
                              child: Text(
                                "12:00 Pm, Thu 16 Feb 2025",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
