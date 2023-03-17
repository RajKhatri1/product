import 'package:flutter/cupertino.dart';

class naviprovider extends ChangeNotifier
{
  int  i=0;
  void change(value)
  {
    i = value;
    notifyListeners();
  }
}