import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:in_app_notification/in_app_notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InAppNotification(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text('Click me'),
            onPressed: () => InAppNotification.show(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        CachedNetworkImage(
                          imageUrl:
                              'https://www.neappoli.com/static/media/flutterImg.94b8139a.png',
                          width: 80,
                          height: 80,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Text(
                              'New Deal!!!',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'New Deal!!!',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
                context: context),
          ),
        ),
      ),
    );
  }
}
