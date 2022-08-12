import 'package:counter_app_mvvm/core/viewmodel/counter_app_model.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterAppModel>.reactive(
        viewModelBuilder: () => CounterAppModel(),
        builder: (context, model, child) => Scaffold(
          
              appBar: AppBar(
                 title: Text("ca"),
              ),


              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  FloatingActionButton(
                    onPressed: (){
                      model.increament();
                    },
                    backgroundColor: Color.fromARGB(255, 0, 29, 53),
                    child: Icon(Icons.play_arrow, color :Colors.white),
                  ),
   
                  SizedBox(height: 30,),

                  FloatingActionButton(
                    onPressed: (){
                      model.decreament();
                    },
                   backgroundColor: Color.fromARGB(255, 0, 29, 53),
                    child: Icon(Icons.stop, color: Colors.white,),
                  )


                ],
              ),
              body: Container(
                
                child: Center(
                  child: Text(model.getCounter.toString())
                  //child: Text("a"),
                ),
              ),
             )
            );

  // return Scaffold(
  //   body: Container(child: Text("a"),),
  // );
            
  }
}
