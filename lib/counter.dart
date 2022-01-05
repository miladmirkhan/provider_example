import 'package:flutter/cupertino.dart';



class count extends ChangeNotifier{
  int num =0;//initial value

  int get getnum => num;//getter method

void incrementnum(){
num++;
notifyListeners();
}

}
