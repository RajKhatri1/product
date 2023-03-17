import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product/screen/provider/navigationprovider.dart';
import 'package:product/screen/view/navigation.dart';
import 'package:product/screen/view/screen1.dart';
import 'package:product/screen/view/screen2.dart';
import 'package:product/screen/view/screen3.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => naviprovider(),
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          '/' : (p0) => navigation(),
          'home' : (p0) => cart_screen(),
        },
      ),
    ),
  );
}

