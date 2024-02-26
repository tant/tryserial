import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String _result = "Your item will be displayed here.";

  Future<void> _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.pushNamed(context, '/page2');
    if (result != null) {
      setState(() {
        _result = result as String;
      });
    } else {
      setState(() {
        _result = "No result";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page One"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _navigateAndDisplaySelection(context);
                },
                child: Text("Go to Page Two and choose an item")),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(_result),
            ),
          ],
        ),
      ),
    );
  }
}
