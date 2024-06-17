import 'package:flutter/material.dart';
import 'package:sample/AddActivityPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, String>> activities = [];

  void _navigateToAddActivityPage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddActivityPage()),
    );

    if (result != null) {
      setState(() {
        activities
            .add({'title': result['title']!, 'content': result['content']!});
      });
    }
  }

  void _deleteActivity(int index) {
    setState(() {
      activities.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("public/images/how.png"),
        title: const Text(
          "Flutter To-do",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(activities[index]['title']!),
            subtitle: Text(activities[index]['content']!),
            trailing: TextButton(
              onPressed: () {
                _deleteActivity(index);
              },
              child: Text('Delete',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddActivityPage,
        tooltip: 'Add Activity',
        child: Icon(Icons.add),
      ),
    );
  }
}
