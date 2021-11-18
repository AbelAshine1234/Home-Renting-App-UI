import 'package:app/presentation/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Post extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              title: Text('1 selected'),
              actions: [
                IconButton(
                  icon: Icon(Icons.file_upload),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
                  ),
                ),
              ],
              backgroundColor: Colors.black87,
            ),
            body: Center(
                child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.location_city),
                      hintText: 'Enter Adress ',
                      labelText: 'Adress',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.location_city),
                      hintText: 'Enter Image ',
                      labelText: 'Image',
                    ),
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                      child: new FlatButton(
                        child: const Text('Submit'),
                        onPressed: () {},
                      )),
                ],
              ),
            ))));
  }
}
