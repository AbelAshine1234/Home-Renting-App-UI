import 'package:app/presentation/screens/details.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final myList = List<int>.generate(100, (i) => i);
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white10,
      body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return ListTile(
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Details()));
                        },
                        child: Text("See More"))
                  ],
                ),
                title: Padding(
                  padding: const EdgeInsets.only(
                      top: 45.0, left: 45, right: 45, bottom: 5),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("../assets/car.jpeg"),
                            fit: BoxFit.cover),
                      ),
                      child: Container(
                        height: mq.height,
                      )),
                ));
          }),
    );
  }
}
