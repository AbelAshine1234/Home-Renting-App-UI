import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text('1 selected'),
          backgroundColor: Colors.black87,
        ),
        body: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                title: const Text('Owner '),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Adress XXXXX',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Date XXX-XX-XX',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    textColor: const Color(0xFF6200EE),
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text('Rent'),
                  ),
                ],
              ),
              Image.asset('../assets/car.jpeg'),
            ],
          ),
        ),
      ),
    );
  }
}
