import 'package:flutter/material.dart';
import 'Agent.dart';
import 'ItemCard.dart';

class Listitems extends StatefulWidget {
  const Listitems({super.key});

  @override
  State<Listitems> createState() => _ListitemsState();
}

List<Agent> agents = [
  Agent(name: 'Jett', role: 'Duelist', kda: [20, 10, 9]),
  Agent(name: 'Clove', role: 'Controller', kda: [19, 19, 19]),
  Agent(name: 'Sage', role: 'Sentinel', kda: [5, 15, 10]),
  Agent(name: 'Deadlock', role: 'Sentinel', kda: [10, 10, 9]),
  Agent(name: 'Fade', role: 'Initiator', kda: [69, 9, 15]),
];

class _ListitemsState extends State<Listitems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agent Stats', style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: agents.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Itemcard(agent: agents[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        Navigator.pushNamed(context, '/add');
      },
      child: Icon(Icons.add),
      )

    );
  }
}
