import 'package:flutter/material.dart';
import 'package:listview/seperator.dart';


class SecondMethod extends StatelessWidget {
  SecondMethod({super.key});
  final List<String> items = List.generate(100, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                );
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>  ThirdMethod(),
                ));
              },
              child: const Text("Third Method"))
        ],
      ),
    );
  }
}