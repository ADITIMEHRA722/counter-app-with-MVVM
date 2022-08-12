import 'package:cloud_firestore/cloud_firestore.dart';


class FirestoreServices{


  final CollectionReference dataReference =
   FirebaseFirestore.instance.collection('users');

   Stream getData(){
    return dataReference.snapshots();
   }

   Future addData(Map<String , dynamic> data )async{
    return dataReference.add(data);
   }
}