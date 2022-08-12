import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';
import '../services/cloud_firestore.dart';
class StreamViewExampleModel extends StreamViewModel<QuerySnapshot>{
final FirestoreServices firestoreServices = FirestoreServices();

  @override
Stream<QuerySnapshot> get stream => getStreamFromFirestore() as Stream<QuerySnapshot>;
Stream getStreamFromFirestore(){
  return firestoreServices.getData();
}
  
}