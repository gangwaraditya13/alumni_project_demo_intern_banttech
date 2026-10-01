import 'package:alumni/features/home/presentation/widgets/home_screen_part_3_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventsUpcomingViewAllScreen extends StatelessWidget {
  const EventsUpcomingViewAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text("Upcoming events",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:15.0,left: 15.0, right: 15.0),
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: HomeScreenPart3Card(),
        ),itemCount: 5,),
      ),
    );
  }
}
