import 'package:flutter/material.dart';

class chatWidget extends StatelessWidget {
  const chatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10, // Example item count
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('Message $index'),
            subtitle: Text('This is a sample message content.'),
          );
        },
      ),
    );
  }
}
