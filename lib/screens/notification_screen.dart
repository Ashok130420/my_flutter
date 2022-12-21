import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  final List _notification =
      List<String>.generate(5000, (index) => 'Notification $index');

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Notifications'),
          ),
          body: ListView.builder(
            itemCount: _notification.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: const FlutterLogo(),
                  trailing: const Icon(Icons.delete),
                  title: Text(
                    _notification[index],
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
