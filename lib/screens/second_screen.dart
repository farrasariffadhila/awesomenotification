import 'package:flutter/material.dart';

import '../services/notification_service.dart';
import 'package:authfirebase/services/notification_service.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Text('This is the second screen from the notification!'),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go to Home'),
            ),
            OutlinedButton(
              onPressed: () async {
                await NotificationService.createNotification(
                  id: 5,
                  title: 'Scheduled Notification',
                  body: 'This is the body of the notification',
                  scheduled: true,
                  interval: Duration(seconds: 5),
                );
              },
              child: const Text('Scheduled Notification'),
            )
          ],
        ),
      ),
    );
  }
}