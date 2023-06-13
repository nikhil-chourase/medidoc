import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';




class InfoBubble extends StatelessWidget {

  InfoBubble({required this.name,required this.exp,required this.time});

  final String name;
  final String exp;
  final String time;




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.maxFinite,
        height: 150,
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  exp,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.white70,
                  ),
                ),


                const SizedBox(height: 18),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 8.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children:  [
                      const Icon(
                        Ionicons.calendar_outline,
                        size: 18,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 6, right: 14),
                        child: Text(
                          "Today",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Ionicons.time_outline,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
