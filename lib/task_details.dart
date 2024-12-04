import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  final Map<String, String> task;

  TaskDetails({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task['title']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${task['title']}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Description: ${task['description']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Start Date: ${task['startDate']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('End Date: ${task['endDate']}',
                style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
