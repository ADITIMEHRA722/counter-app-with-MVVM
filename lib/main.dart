import 'package:counter_app_mvvm/core/viewmodel/future_view_model.dart';
import 'package:counter_app_mvvm/meta/view/counter_app.dart';
import 'package:counter_app_mvvm/meta/view/future_view_example.dart';
import 'package:counter_app_mvvm/meta/view/stream_view_example.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "XXX",
      appId: "XXX",
      messagingSenderId: "XXX",
      projectId: "XXX",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
       // primarySwatch: Color.fromARGB(255, 0, 7, 12),
      ),
      home:CounterApp(),
    );
    
  }
}

