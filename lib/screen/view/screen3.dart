import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/navigationprovider.dart';

class cart_screen extends StatefulWidget {
  const cart_screen({Key? key}) : super(key: key);

  @override
  State<cart_screen> createState() => _cart_screenState();
}

class _cart_screenState extends State<cart_screen> {
  naviprovider? Picprovider;

  @override
  Widget build(BuildContext context) {
    Picprovider = Provider.of<naviprovider>(context, listen: true);
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
                    Icon(CupertinoIcons.person, color: Colors.black26),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Name",
                        style: TextStyle(
                            color: Colors.black26,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Divider(),
              TextFieldTapRegion(
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.mail_solid,
                      color: Colors.black26,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("E-mail",
                        style: TextStyle(
                            color: Colors.black26,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Divider(),
              TextFieldTapRegion(
                child: Row(
                  children: [
                    Icon(CupertinoIcons.location_solid, color: Colors.black26),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Location",
                        style: TextStyle(
                            color: Colors.black26,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Divider(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: CupertinoTextField.borderless(
                  prefix: Icon(
                    CupertinoIcons.time,
                    color: Colors.black38,
                  ),
                  placeholder: "Delivery Time",
                  suffix: Text(
                      " ${Picprovider!.dateTime.day}-${Picprovider!.dateTime.month}-${Picprovider!.dateTime.year} ${Picprovider!.dateTime.hour}:${Picprovider!.dateTime.minute} "),
                ),
              ),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (value) {
                    Picprovider!.changedate(value);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
