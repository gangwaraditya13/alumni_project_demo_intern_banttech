import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class HomeScreenPart9Card extends StatelessWidget {
  const HomeScreenPart9Card({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Theme.of(
          context,
        ).colorScheme.surface,
        borderRadius: BorderRadius.circular(
          15.r,
        ),
        boxShadow: [
          BoxShadow(color: Colors.grey.withValues(alpha: 0.2), spreadRadius: 2.r, blurStyle: .outer, blurRadius: 3.r)
        ]
      ),
      child: Padding(
        padding: EdgeInsets.all(8.r),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 150.h,
                width: MediaQuery.of(
                  context,
                ).size.width,
                clipBehavior: .antiAlias,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(15.r),
                ),
                child: Image.network(
                  "https://images.unsplash.com/photo-1547347298-4074fc3086f0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  fit: .cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:8.r, bottom: 8.r),
                    child: Row(
                      mainAxisAlignment:
                          .spaceBetween,
                      children: [
                        Text(
                          "Donation",
                          style: TextStyle(
                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 20.h,
                          width: 45.w,
                          decoration: BoxDecoration(
                            color:
                            Theme.of(context)
                                .colorScheme
                                .secondary,
                            borderRadius:
                            BorderRadius.circular(
                              5.r,
                            ),
                          ),
                          child: Text(
                            "75%",
                            textAlign: .center,
                            style: TextStyle(
                              color:
                              Theme.of(
                                context,
                              )
                                  .colorScheme
                                  .surface,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: 10.h,
                          width: MediaQuery.of(
                            context,
                          ).size.width,
                          decoration: BoxDecoration(
                            color:
                            Theme.of(
                              context,
                            )
                                .colorScheme
                                .primary,
                            borderRadius:
                            BorderRadius.circular(
                              15.r,
                            ),
                          ),
                        ),
                        Container(
                          height: 10.h,
                          width:
                          MediaQuery.of(
                            context,
                          ).size.width /
                              2,
                          decoration: BoxDecoration(
                            color:
                            Theme.of(
                              context,
                            )
                                .colorScheme
                                .secondary,
                            borderRadius:
                            BorderRadius.circular(
                              15.r,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment:
                        .spaceBetween,
                    children: [
                      Text(
                        "Raised Rs. 10,000",
                        style: TextStyle(
                          fontWeight:
                          FontWeight.w300,
                        ),
                      ),
                      Text(
                        "Goal Rs. 50,000",
                        style: TextStyle(
                          fontWeight:
                          FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Text(
                "Helping The Homeless During Hopless Times",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp), textAlign: .start,
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Row(
                  children: [
                    Text("Donate Now", style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold),),
                    Icon(
                      Icons
                          .arrow_forward_rounded,
                      size: 15.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
