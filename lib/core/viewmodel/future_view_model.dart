import 'package:stacked/stacked.dart';

import '../services/cloud_firestore.dart';

class FutureVIewExampleModel extends FutureViewModel{
  final FirestoreServices firestoreServices = FirestoreServices();

  
  @override
  Future futureToRun() => renderFutureFromFirestore();  

Future renderFutureFromFirestore(){
 return firestoreServices.addData(
  {
     'name': 'New User', 'grades':2.0
  }
 );
}
}
