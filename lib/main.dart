import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: ListTile(
                      leading: Image.network(
                        "https://awsimages.detik.net.id/community/media/visual/2020/12/30/laptop-terbaik-dunia-tahun-2020-versi-the-verge.png?w=750&q=90",
                      ),
                      title: Text(
                        "Laptop",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "New Laptop, The Next Generation",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}
