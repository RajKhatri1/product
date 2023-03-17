import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.back),
          middle: Text("screen1"),
        ),
        child: ListView.builder(itemCount: 10,itemBuilder: (context, index) => product(),)
      ),
    );
  }
  Widget product()
  {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/earing.jpg",fit: BoxFit.cover),
          ),
          SizedBox(width: 5,),
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey.shade300,width: 1),)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Earing",style: TextStyle(fontSize: 15,letterSpacing: 1),),
                        SizedBox(height: 3,),
                        Text("\$ 100",style: TextStyle(fontSize: 12,letterSpacing: 1,color: Colors.grey),),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add_circle_outline,color: Colors.lightBlue,),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
