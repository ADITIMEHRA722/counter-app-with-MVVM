
import 'package:stacked/stacked.dart';

class CounterAppModel extends BaseViewModel{


int _counter = 0 ; 
int get getCounter => _counter;

void increament(){
  _counter++;
  notifyListeners();
}

void decreament(){
  _counter--;
  notifyListeners(); 
}

}
 
