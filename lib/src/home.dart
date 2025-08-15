import 'package:flutter/material.dart';
import 'package:multi_split_view/multi_split_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiSplitView(
        axis: Axis.horizontal,
        builder: (context, area) {
          // area.index gives you 0, 1, or 2
          return Container(
            color: [
              Colors.grey[900],
              Colors.grey[800],
              Colors.grey[700],
            ][area.index],
            child: Center(
              child: Text(
                'Pane ${area.index + 1}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
        initialAreas: [
          Area(flex: 2), // Pane 1
          Area(flex: 3), // Pane 2
          Area(flex: 5), // Pane 3
        ],
      ),
    );
  }
}
