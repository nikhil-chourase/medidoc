import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'infobubble.dart';



class InfoStream extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('doctors').snapshots(),
        builder: (context,snapshot){


          if (!snapshot.hasData) {
            return const Center(
              child:  CircularProgressIndicator(
                backgroundColor: Colors.lightBlueAccent,
              ),
            );
          }
          List<InfoBubble> infoBubbles = [];


          final information = snapshot.data!.docs.reversed;
          for(var info in information){
            final name =  info.get('name');
            final exp =  info.get('exp');
            final time =  info.get('time');



            final infoBubble = InfoBubble(name: name,exp: exp,time: time,);

            infoBubbles.add(infoBubble);
          }


          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: infoBubbles,
          );
        }
        );
  }
}
