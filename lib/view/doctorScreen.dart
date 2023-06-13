import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medidoc/view/widgets/infoStream.dart';


class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi, Mate"),
            Text(
              "How are you feeling today?",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.notifications_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.search_outline),
          ),
        ],
      ),
      body: SafeArea(
        child: InfoStream(),
      ),
    );
  }
}
