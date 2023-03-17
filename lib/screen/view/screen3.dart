import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart_screen extends StatefulWidget {
  const cart_screen({Key? key}) : super(key: key);

  @override
  State<cart_screen> createState() => _cart_screenState();
}

class _cart_screenState extends State<cart_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Shopping Cart",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Divider(),
              TextFieldTapRegion(
                child: Row(
                  children: [
                    Icon(CupertinoIcons.person),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Name"),
                  ],
                ),
              ),
              Divider(),
              TextFieldTapRegion(
                child: Row(
                  children: [
                    Icon(CupertinoIcons.person),
                    SizedBox(
                      width: 15,
                    ),
                    Text("E-mail"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
