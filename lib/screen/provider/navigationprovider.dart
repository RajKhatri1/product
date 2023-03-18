import 'package:flutter/cupertino.dart';

class naviprovider extends ChangeNotifier
{
  int  i=0;
  void change(value)
  {
    i = value;
    notifyListeners();
  }
  DateTime dateTime = DateTime(2023, 19, 3, 10, 10);

  void changedate(DateTime newDate)
  {
    dateTime = newDate;
    notifyListeners();
  }
}