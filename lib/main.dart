import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Homepage',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Habit Tracker App')),
      body: Column(
        children: const <Widget>[
          Habit(task: "Running", subtask: "Run for 500m"),
          Habit(task: "Cycling", subtask: "Do cycling for 3km"),
          Habit(task: "Jogging", subtask: "Jogging for 1km"),
        ]
      ),
    );
  }
}

class Habit extends StatefulWidget {
  const Habit({super.key, this.task = '', this.subtask = ''});
  final String task;
  final String subtask;

  @override
  State<Habit> createState() => _HabitState();
}

class _HabitState extends State<Habit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xF5F5F5F5),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                widget.task,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.green,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  )),
              
            ],
          ),
          const Divider(
            color: Colors.black,
            height: 20,
            thickness: 1,
          ),
          Text(widget.subtask, style: TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
}
