import 'package:flutter/cupertino.dart';
import 'package:product/screen/provider/navigationprovider.dart';
import 'package:product/screen/view/screen1.dart';
import 'package:product/screen/view/screen2.dart';
import 'package:provider/provider.dart';

class navigation extends StatefulWidget {
  const navigation({Key? key}) : super(key: key);

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  naviprovider? Picprovider;
  List screen = [
    firstPage(),
   secondPage(),
  ];
  @override
  Widget build(BuildContext context) {
    Picprovider = Provider.of<naviprovider>(context, listen: true);
    return SafeArea(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
         onTap: (value) {
           Picprovider!.change(value);
         },
         currentIndex: Picprovider!.i,
         items: [
           BottomNavigationBarItem(
             icon: Icon(CupertinoIcons.home),
             label: "home"
           ),
           BottomNavigationBarItem(
             icon: Icon(CupertinoIcons.search),
             label: "Search"
           ),
           BottomNavigationBarItem(
             icon: Icon(CupertinoIcons.cart),
             label: "Cart"
           ),
         ],
       ), tabBuilder: (BuildContext context, int index) {
         return screen[index];
      },
      ),
    );
  }
}
