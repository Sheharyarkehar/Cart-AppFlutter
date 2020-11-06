import 'package:flutter/cupertino.dart';
class CounterModel extends ChangeNotifier{
int count=0;
int get GetCount=>count;
void incrementCounter(){
  count++;
  notifyListeners();
}
}