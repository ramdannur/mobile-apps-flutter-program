import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arg = Get.arguments;

    var title = arg['title'];
    var body = arg['body'];
    var payload = arg['payload'];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Judul
            Text("Title",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 8,
            ),
            Text(title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.grey.shade600)),
            const SizedBox(
              height: 24,
            ),

            // Body
            Text("Body",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            Text(body,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.grey.shade600)),
            const SizedBox(
              height: 24,
            ),

            // Payload
            Text("Payload",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 8,
            ),
            Text(payload,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
