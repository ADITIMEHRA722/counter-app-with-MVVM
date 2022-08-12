import 'package:counter_app_mvvm/core/viewmodel/future_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

class FutureViewExample extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    return ViewModelBuilder<FutureVIewExampleModel>.reactive(
      viewModelBuilder: () => FutureVIewExampleModel(), 
      builder: ( context, model, child )=> Scaffold(

        floatingActionButton: FloatingActionButton(
          onPressed: () => model.futureToRun(),
        backgroundColor: Color.fromARGB(255, 0, 29, 53),                 

          ),
          

      ),
      );
  }
}