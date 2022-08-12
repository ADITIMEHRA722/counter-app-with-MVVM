import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counter_app_mvvm/core/viewmodel/stream_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

class StreamViewExample extends StatelessWidget {
  const StreamViewExample
({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamViewExampleModel>.reactive(
      viewModelBuilder: ()=> StreamViewExampleModel(),
      builder:(context , model , chiild)=> Scaffold(

        appBar:  AppBar(),
        body: StreamBuilder<QuerySnapshot> (
          stream: model.stream,
          builder: (context, snapshot) => ListView(
            children:snapshot.data!.docs
            .map((DocumentSnapshot documentSnapshot) {
              Map<String , dynamic> data = documentSnapshot.data()! as Map<String, dynamic>;
             
             return  ListTile(
              title: Text((documentSnapshot.data() as dynamic )['name']),
              subtitle: Text((documentSnapshot.data() as dynamic)['grades']),
            );
  }).toList(),
          ),
          ),
      ),
      );
  }
}