import 'package:flutter/cupertino.dart';

class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(
                    color: Color(0xff000000),
                  ),
                  color: Color(0xFFFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.search),
                      SizedBox(width: 10),
                      Text("shirt"),
                      Expanded(child: SizedBox()),
                      Icon(CupertinoIcons.multiply_circle_fill),
                    ],
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) => product(),
            )
          ],
        ),
      ),
    );
  }

  Widget product() {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xfffffff),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Color(0xfFF0000),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/shirt.jpg", fit: BoxFit.cover),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Color(0xf000000), width: 1),
              )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "shirt",
                            style: TextStyle(fontSize: 15, letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "\$ 250",
                            style: TextStyle(fontSize: 12, letterSpacing: 1),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Icon(CupertinoIcons.add_circled)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
